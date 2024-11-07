import 'package:boilerplate/features/account/view/new_account.dart';
import 'package:boilerplate/features/home/view/home_page.dart';
import 'package:boilerplate/features/temp/navigator_bar.dart';
import 'package:boilerplate/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/features/home/hello.dart'; // Trang đích ví dụ

class SiderBar1 extends StatelessWidget {
  const SiderBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context)
                .size
                .height, // Đảm bảo kéo dài theo chiều cao màn hình
          ),
          color: const Color.fromARGB(255, 30, 58, 80),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 42, 109, 160),
                height: 59.8,
                child: const Text(
                  'HRM',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              Container(
                height: 70,
                child: Padding(
                  padding: EdgeInsets.only(left: 15, top: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.account_circle,
                            color: Colors.white,
                            size: 50,
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Admin',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'admin',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              SiderBar(
                icon: Icons.dashboard,
                title: 'Tổng quan',
                items: [
                  "Thống kê",
                  "Danh sách nhân viên",
                  "Danh sách tài khoản"
                ],
                pages: [HomePage(), Hello(), Hello()],
                context: context,
              ),
              SiderBar(
                icon: Icons.people_alt,
                title: 'Quản lý nhân viên',
                items: [
                  "Chức vụ",
                  "Trình độ",
                  "Chuyên môn",
                  "Bằng cấp",
                  "Loại nhân viên",
                  "Thêm mới nhân viên",
                  "Danh sách nhân viên"
                ],
                pages: [
                  Hello(),
                  Hello(),
                  Hello(),
                  Hello(),
                  Hello(),
                  Hello(),
                  Hello()
                ],
                context: context,
              ),
              // SiderBar(
              //   icon: Icons.apartment,
              //   title: 'Quản lý Phòng ban',
              //   items: ["Danh sách phòng ban", "Thêm phòng ban"],
              //   pages: [Hello(), NewDepartmentPage()],
              //   context: context,
              // ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Hello()));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.apartment,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Quản lý phòng ban',
                        style: TextStyle(
                            fontSize: 15,
                            // color: selectedIndex == index
                            //     ? Colors.black
                            //     : Colors.white,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SiderBar(
                icon: Icons.monetization_on,
                title: 'Quản lý lương',
                items: ["Bảng lương", "Tính lương"],
                pages: [Hello(), Hello()],
                context: context,
              ),
              SiderBar(
                icon: Icons.business_center,
                title: 'Quản lý công tác',
                items: [
                  "Danh sách hợp đồng",
                  "Thêm hợp đồng",
                ],
                pages: [Hello(), Hello()],
                context: context,
              ),
              SiderBar(
                icon: Icons.group,
                title: 'Nhóm nhân viên',
                items: [
                  "Danh sách nhóm",
                  "Thêm nhóm",
                ],
                pages: [Hello(), Hello()],
                context: context,
              ),
              SiderBar(
                icon: Icons.thumb_up,
                title: 'Khen thưởng kỷ luật',
                items: [
                  "Danh sách khen thưởng",
                  "Thêm khen thưởng kỷ luật",
                ],
                pages: [Hello(), Hello()],
                context: context,
              ),
              SiderBar(
                icon: Icons.account_circle,
                title: 'Tài khoản',
                items: [
                  "Thông tin cá nhân",
                  "Thông tin tài khoản ",
                  "Tạo tài khoản",
                  "Danh sách tài khoản",
                  "Đổi mật khẩu",
                ],
                pages: [Hello(), Hello(), NewAccountPage(), Hello(), Hello()],
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
