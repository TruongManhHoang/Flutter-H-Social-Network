import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget implements PreferredSizeWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 60, // Đặt chiều cao cho AppBar
      flexibleSpace: Row(
        children: [
          // Phần bên trái với màu xanh đậm hơn cho chữ "QLNS"
          Container(
            width: 100, // Chiều rộng phù hợp cho "QLNS"
            color: Colors.blue[900], // Màu xanh đậm hơn
            alignment: Alignment.center,
            child: const Text(
              'QLNS',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Phần biểu tượng menu ở giữa
          Container(
            color: Colors.blue, // Màu xanh nhạt hơn cho phần giữa
            width: 50, // Chiều rộng phù hợp cho icon
            child: Icon(
              Icons.menu, // Icon menu
              color: Colors.white,
              size: 30,
            ),
          ),

          // Phần trống để phần bên phải có thể căn chỉnh
          Expanded(
            child: Container(
              color: Colors.blue, // Màu xanh nhạt
            ),
          ),

          // Phần bên phải chứa avatar và tên "Admin"
          Container(
            padding: const EdgeInsets.only(right: 16.0),
            color: Colors.blue, // Cùng màu xanh nhạt
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Admin',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
