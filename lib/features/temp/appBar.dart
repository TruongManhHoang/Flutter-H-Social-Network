import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppbarDrawer extends StatelessWidget {
  const AppbarDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [Text('Hello')],
      ),
    );
  }
}
