import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text('App Bar!'),
        flexibleSpace: Image(
          image: AssetImage('assets/images/blur.png'),
          fit: BoxFit.cover,
        ));
  }
}