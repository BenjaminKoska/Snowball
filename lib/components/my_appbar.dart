import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;

  const MyAppBar({Key? key, required this.text}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      title: Text(text,
          style: const TextStyle(
            fontSize: 26.25,
            fontWeight: FontWeight.w600,
          )),
    );
  }
}
