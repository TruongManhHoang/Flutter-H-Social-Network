import 'package:boilerplate/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 64,
      color: const Color.fromARGB(255, 10, 93, 148),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.push(AppRouter.homePath);
                  },
                  icon: const Icon(Icons.home, color: Colors.white),
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // Action for 'Another'
                    context.push(AppRouter.findUserPath);
                  },
                  icon: const Icon(Icons.search, color: Colors.white),
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // Action for 'Option'
                    // context.push(AppRouter.optionPath);
                  },
                  icon: const Icon(Icons.add_box, color: Colors.white),
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // context.push(AppRouter.cartPath);
                  },
                  icon: const Icon(Icons.shop, color: Colors.white),
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.push(AppRouter.userPath);
                  },
                  icon: const Icon(Icons.account_circle, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
