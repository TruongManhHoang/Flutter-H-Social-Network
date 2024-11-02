import 'dart:io';

import 'package:boilerplate/features/comment/bloc/comment_bloc.dart';
import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/home/hello.dart';
import 'package:boilerplate/features/home/model/post.dart';
import 'package:boilerplate/features/temp/home_bottom.dart';
import 'package:boilerplate/features/temp/siderBar.dart';
import 'package:boilerplate/features/user/bloc/user_bloc.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/services/cloudinary/cloudinary_serivce.dart';
import 'package:chewie/chewie.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class ClientUserPage extends StatefulWidget {
  const ClientUserPage({super.key});

  @override
  State<ClientUserPage> createState() => _ClientUserPageState();
}

class _ClientUserPageState extends State<ClientUserPage> {
  late UserBloc _userBloc;
  late HomeBloc _homeBloc;
  late CommentBloc _commentBloc;

  @override
  void initState() {
    super.initState();
    _userBloc = Injector.instance<UserBloc>();
    _homeBloc = Injector.instance<HomeBloc>()..add(HomeEvent.getPostByUserId());
    _commentBloc = Injector.instance<CommentBloc>();
  }

  @override
  void dispose() {
    _userBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>.value(value: _userBloc),
        BlocProvider<HomeBloc>.value(value: _homeBloc),
        BlocProvider<CommentBloc>.value(value: _commentBloc),
      ],
      child: Scaffold(
        body: Row(
          children: [
            if (screenWidth > 600)
              Expanded(
                flex: 1,
                child: SiderBar1(),
              ),
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  _AppBar(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: _Body(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: HomeBottom(),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 47, 141, 212),
        flexibleSpace: const Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [
                Text(
                  'TMHNetWork',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Spacer(),
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.message_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            )));
  }

  @override
  Size get preferredSize => const Size.fromHeight(30);
}

class _Body extends StatefulWidget {
  const _Body({super.key});

  @override
  State<_Body> createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  bool isLiked = false;
  bool showComment = false;
  bool isLikedComment = false;
  void showFormEditUser() {
    showDialog(
        context: context,
        builder: (BuildContext dialogContext) {
          return BlocProvider.value(
            value: context.read<UserBloc>(),
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              content: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                return BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                  final user = state.clientUser!;
                  return Container(
                      padding: EdgeInsets.all(16.0),
                      width: double.maxFinite,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Edit profile user',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'FirstName',
                              border: OutlineInputBorder(),
                            ),
                            initialValue: user.firstName,
                            onChanged: (value) {
                              context
                                  .read<UserBloc>()
                                  .add(UserEvent.changeFirstName(value));
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'LastName',
                              border: OutlineInputBorder(),
                            ),
                            initialValue: user.lastName,
                            onChanged: (value) {
                              context
                                  .read<UserBloc>()
                                  .add(UserEvent.changeLastName(value));
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                            initialValue: user.email,
                            onChanged: (value) {
                              context
                                  .read<UserBloc>()
                                  .add(UserEvent.changeEmail(value));
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Gender',
                              border: OutlineInputBorder(),
                            ),
                            initialValue: user.gender,
                            onChanged: (value) {
                              context
                                  .read<UserBloc>()
                                  .add(UserEvent.changeGender(value));
                            },
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              context
                                  .read<UserBloc>()
                                  .add(UserEvent.updateProfileUser());
                              Navigator.pop(dialogContext); // Đóng dialog
                            },
                            child: Text('Save'),
                          ),
                        ],
                      ));
                });
              }),
            ),
          );
        });
  }

  void Comment(StateSetter updateState) {
    updateState(() {
      showComment = !showComment;
    });
  }

  void showPost(Post post) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return BlocProvider.value(
          value: context.read<HomeBloc>(),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Column(mainAxisSize: MainAxisSize.min, children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.account_circle,
                                  color: Colors.grey,
                                  size: 45,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      post.user.firstName,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(post.caption),
                                  ],
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.network(
                    post.image,
                    fit: BoxFit.cover,
                    width: 600,
                    height: 500,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              context
                                  .read<HomeBloc>()
                                  .add(HomeEvent.changeId(post.id));
                              isLiked = !isLiked;
                              context
                                  .read<HomeBloc>()
                                  .add(HomeEvent.likePost());
                            });
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: isLiked ? Colors.red : Colors.grey,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                          onPressed: () {
                            Comment(setState);
                          },
                          icon: Icon(
                            Icons.comment,
                            color: showComment ? Colors.blue : Colors.grey,
                          )),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            context
                                .read<HomeBloc>()
                                .add(HomeEvent.changeId(post.id));
                            context.read<HomeBloc>().add(HomeEvent.savePost());
                          },
                          icon: Icon(
                            Icons.save_rounded,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                  if (showComment)
                    Container(
                      height: 70,
                      child: SingleChildScrollView(
                        child: Column(
                          children: post.comments.map((comment) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 10, bottom: 10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            comment.user.firstName,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(comment.content),
                                        ],
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {
                                          context.read<CommentBloc>().add(
                                              CommentEvent.selectCommentId(
                                                  comment.id));
                                          context
                                              .read<CommentBloc>()
                                              .add(CommentEvent.likeComment());
                                        },
                                        icon: Icon(
                                          Icons.favorite,
                                          color: isLikedComment
                                              ? Colors.red
                                              : Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                    )
                ]);
              },
            ),
          ),
        );
      },
    );
  }

  // void showSavePost(Post post) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext dialogContext) {
  //       return BlocProvider.value(
  //         value: context.read<HomeBloc>(),
  //         child: AlertDialog(
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(10),
  //           ),
  //           content: StatefulBuilder(
  //             builder: (BuildContext context, StateSetter setState) {
  //               return Column(mainAxisSize: MainAxisSize.min, children: [
  //                 Align(
  //                   alignment: Alignment.centerLeft,
  //                   child: Padding(
  //                       padding: const EdgeInsets.symmetric(horizontal: 5),
  //                       child: Column(
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           Row(
  //                             children: [
  //                               Icon(
  //                                 Icons.account_circle,
  //                                 color: Colors.grey,
  //                                 size: 45,
  //                               ),
  //                               Column(
  //                                 children: [
  //                                   Text(
  //                                     post.user.firstName,
  //                                     style: TextStyle(color: Colors.black),
  //                                   ),
  //                                   const SizedBox(height: 5),
  //                                   Text(post.caption),
  //                                 ],
  //                               )
  //                             ],
  //                           )
  //                         ],
  //                       )),
  //                 ),
  //                 SizedBox(
  //                   height: 10,
  //                 ),
  //                 Image.network(
  //                   post.image,
  //                   fit: BoxFit.cover,
  //                   width: 600,
  //                   height: 500,
  //                 ),
  //                 const SizedBox(height: 8),
  //                 Row(
  //                   children: [
  //                     IconButton(
  //                         onPressed: () {
  //                           setState(() {
  //                             context
  //                                 .read<HomeBloc>()
  //                                 .add(HomeEvent.changeId(post.id));
  //                             isLiked = !isLiked;
  //                             context
  //                                 .read<HomeBloc>()
  //                                 .add(HomeEvent.likePost());
  //                           });
  //                         },
  //                         icon: Icon(
  //                           Icons.favorite,
  //                           color: isLiked ? Colors.red : Colors.grey,
  //                         )),
  //                     SizedBox(
  //                       width: 5,
  //                     ),
  //                     IconButton(
  //                         onPressed: () {
  //                           Comment(setState);
  //                         },
  //                         icon: Icon(
  //                           Icons.comment,
  //                           color: showComment ? Colors.blue : Colors.grey,
  //                         )),
  //                     Spacer(),
  //                     IconButton(
  //                         onPressed: () {
  //                           context
  //                               .read<HomeBloc>()
  //                               .add(HomeEvent.changeId(post.id));
  //                           context.read<HomeBloc>().add(HomeEvent.savePost());
  //                         },
  //                         icon: Icon(
  //                           Icons.save_rounded,
  //                           color: Colors.grey,
  //                         )),
  //                   ],
  //                 ),
  //                 if (showComment)
  //                   Container(
  //                     height: 70,
  //                     child: SingleChildScrollView(
  //                       child: Column(
  //                         children: post.comments.map((comment) {
  //                           return Column(
  //                             children: [
  //                               Padding(
  //                                 padding: const EdgeInsets.only(
  //                                     left: 20, top: 10, bottom: 10),
  //                                 child: Row(
  //                                   crossAxisAlignment:
  //                                       CrossAxisAlignment.start,
  //                                   children: [
  //                                     Column(
  //                                       crossAxisAlignment:
  //                                           CrossAxisAlignment.start,
  //                                       children: [
  //                                         Text(
  //                                           comment.user.firstName,
  //                                           style: TextStyle(
  //                                               fontWeight: FontWeight.bold),
  //                                         ),
  //                                         const SizedBox(height: 5),
  //                                         Text(comment.content),
  //                                       ],
  //                                     ),
  //                                     const Spacer(),
  //                                     IconButton(
  //                                       onPressed: () {
  //                                         context.read<CommentBloc>().add(
  //                                             CommentEvent.selectCommentId(
  //                                                 comment.id));
  //                                         context
  //                                             .read<CommentBloc>()
  //                                             .add(CommentEvent.likeComment());
  //                                       },
  //                                       icon: Icon(
  //                                         Icons.favorite,
  //                                         color: isLikedComment
  //                                             ? Colors.red
  //                                             : Colors.grey,
  //                                       ),
  //                                     ),
  //                                   ],
  //                                 ),
  //                               ),
  //                               const Divider(),
  //                             ],
  //                           );
  //                         }).toList(),
  //                       ),
  //                     ),
  //                   )
  //               ]);
  //             },
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state.clientUser != null) {
            final user = state.clientUser!;
            return Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Icon(
                          Icons.account_circle,
                          color: Colors.grey,
                          size: 80,
                        ),
                        Text('${user.firstName} ${user.lastName}'),
                      ],
                    ),
                    Column(children: const [Text('0'), Text('posts')]),
                    Column(children: const [Text('0'), Text('followers')]),
                    Column(children: const [Text('0'), Text('following')]),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            showFormEditUser();
                          },
                          child: const Center(child: Text('Edit profile')),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Center(child: Text('Share profile')),
                        ),
                      ),
                    ],
                  ),
                ),
                DefaultTabController(
                    length: 3,
                    child: Column(children: [
                      const TabBar(
                        indicatorColor: Colors.black,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(icon: Icon(Icons.grid_on), text: 'Posts'),
                          Tab(icon: Icon(Icons.bookmark_border), text: 'Saved'),
                          Tab(icon: Icon(Icons.tag), text: 'Tagged'),
                        ],
                      ),
                      SizedBox(
                          height: 300,
                          child: TabBarView(children: [
                            Container(
                                height: 600,
                                child: BlocBuilder<HomeBloc, HomeState>(
                                    builder: (context, state) {
                                  if (state.loading) {
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  } else if (state.isSuccess) {
                                    return GridView.builder(
                                      physics: BouncingScrollPhysics(),
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              childAspectRatio: 0.65),
                                      itemCount: state.getPostByUserId.length,
                                      itemBuilder: (context, index) {
                                        final post =
                                            state.getPostByUserId[index];
                                        return GestureDetector(
                                          onTap: () {
                                            showPost(post);
                                          },
                                          child: Image.network(
                                            post.image,
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                            height: 100,
                                          ),
                                        );
                                      },
                                    );
                                  } else {
                                    return Center(
                                        child: Text('Error loading posts'));
                                  }
                                })),
                            Container(
                              height: 600,
                              child: GridView.builder(
                                physics: BouncingScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 0.65,
                                ),
                                itemCount: user.savedPosts.length,
                                itemBuilder: (context, index) {
                                  final post = user.savedPosts[index];
                                  return GestureDetector(
                                    onTap: () {
                                      // showSavePost(post);
                                    },
                                    child: Image.network(
                                      post.image,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: 100,
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(child: Text('Tagged Content')),
                          ]))
                    ]))
              ],
            );
          } else {
            return Center(
              child: Text('Không tìm thấy người dùng.'),
            );
          }
        },
      ),
    );
  }
}
