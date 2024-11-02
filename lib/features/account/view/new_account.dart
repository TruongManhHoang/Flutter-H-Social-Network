import 'package:boilerplate/features/home/hello.dart';
import 'package:boilerplate/features/temp/siderBar.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart';

class NewAccountPage extends StatelessWidget {
  const NewAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: SiderBar1(),
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                _AppBar(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Body(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: const _Bottom(),
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
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [
                Spacer(),
                Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Admin',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            )));
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

List<PlatformFile>? _files;
void _openFile() async {
  _files = (await FilePicker.platform.pickFiles(
          type: FileType.any, allowMultiple: false, allowedExtensions: null))!
      .files;
  print('Loaded file: ${_files?.first.path}');
}

class Body extends StatefulWidget {
  @override
  _Body createState() => _Body();
}

class _Body extends State<Body> {
  List<String> rooms = ['Phòng A', 'Phòng B', 'Phòng C', 'Phòng D'];

  String? selectedRoom;

  String? selectedStatus;

  Widget buildTextFormField(String name, String hintText, [String? star]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: name,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: star,
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ':',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: hintText,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // height: MediaQuery.of(context).size.height,
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    'Tài khoản',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  Spacer(),
                  Icon(Icons.people_alt),
                  SizedBox(width: 10),
                  Text(
                    'Tài khoản',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.navigate_next),
                  SizedBox(width: 10),
                  Text(
                    'Tạo tài khoản',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Tạo tài khoản',
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(width: 20),
                        RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                                text: 'Những ô nhập có dấu ',
                                style: TextStyle(color: Colors.grey)),
                            TextSpan(
                                text: '* ',
                                style: TextStyle(color: Colors.red)),
                            TextSpan(
                                text: 'là bắt buộc',
                                style: TextStyle(color: Colors.grey))
                          ]),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chọn ảnh:",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                  onTap: _openFile,
                                  child: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Text('Choose file'))),
                              SizedBox(height: 10),
                              Text(
                                'Vui lòng chọn file đúng định dạng: jpg, png, jpeg',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Chọn nhân viên:",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15),
                              DropdownButtonFormField<String>(
                                hint: Text('Chọn nhân viên'),
                                value: selectedRoom,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedRoom = newValue;
                                  });
                                },
                                items: rooms.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(height: 15),
                              buildTextFormField(
                                  'Tên chức vụ', 'Nhập tên chức vụ', '*'),
                              buildTextFormField('Họ', 'Nhập họ', "*"),
                              buildTextFormField('Tên', 'Nhập tên', '*'),
                              buildTextFormField('Email', 'Nhập email', '*'),
                              buildTextFormField(
                                  'Mật khẩu', 'Nhập mật khẩu', '*'),
                              buildTextFormField('Nhập lại mật khẩu',
                                  'Nhập lại mật khẩu', '*'),
                              buildTextFormField(
                                  'Số điện thoại', 'Nhập email', '*'),
                              SizedBox(height: 10),
                              Text(
                                "Trạng thái:",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: RadioListTile(
                                      title: Text("Đang hoạt động"),
                                      value: "Đang hoạt động",
                                      groupValue: selectedStatus,
                                      onChanged: (String? value) {
                                        setState(() {
                                          selectedStatus = value;
                                        });
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: RadioListTile(
                                      title: Text("Ngừng hoạt động"),
                                      value: "Ngừng hoạt động",
                                      groupValue: selectedStatus,
                                      onChanged: (String? value) {
                                        setState(() {
                                          selectedStatus = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          minimumSize: Size(60, 60),
                        ),
                        child: Text(
                          'Tạo tài khoản mới',
                          style: TextStyle(fontSize: 15),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Form(String name, String hintText, [String? star]) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: name,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextSpan(
                  text: star,
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ':',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      TextFormField(
        decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
      ),
      SizedBox(
        height: 20,
      )
    ],
  );
}
