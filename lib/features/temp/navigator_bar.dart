import 'package:boilerplate/features/home/hello.dart';
import 'package:boilerplate/features/temp/sider_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SiderBar extends StatefulWidget {
  final String title;
  final IconData icon;
  final List<String> items;
  final List<Widget> pages;
  final BuildContext context;

  const SiderBar({
    Key? key,
    required this.title,
    required this.icon,
    required this.items,
    required this.pages,
    required this.context,
  }) : super(key: key);

  @override
  _NavigatorBarState createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<SiderBar> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    SiderBarController siderBarController = Get.put(SiderBarController());
    return ExpansionTile(
      title: Row(
        children: [
          Icon(widget.icon, size: 20, color: Colors.white),
          SizedBox(width: 10),
          Text(
            widget.title,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
      children: widget.items.asMap().entries.map((entry) {
        int index = entry.key;
        String item = entry.value;

        return _buildRowWithDivider(item, index, context, widget.pages[index]);
      }).toList(),
    );
  }

  Widget _buildRowWithDivider(
      String title, int index, BuildContext context, Widget targetPage) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
            // ()=> siderBarController.index.value = 0,
            // selected: siderBarController.index.value == 0,
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => targetPage),
            );
          },
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? Colors.blueAccent
                    : Colors.transparent,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.circle_outlined,
                    color: selectedIndex == index ? Colors.black : Colors.white,
                    size: 15,
                  ),
                  SizedBox(width: 10),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      color:
                          selectedIndex == index ? Colors.black : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Divider(
          thickness: 0.5,
          height: 0,
          color: Colors.grey,
        ),
      ],
    );
  }
}
