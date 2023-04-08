import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text nombreAppBar;

  const MyAppBar({super.key, 
  required this.nombreAppBar});

  @override
  Widget build(BuildContext context) {
    
    AssetImage _appBarImage = AssetImage('assets/menu-img.jpg');
    
    return AppBar(
         title: nombreAppBar,
         elevation: 0,
  flexibleSpace: Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: _appBarImage,
        fit: BoxFit.cover,
      ),
    ),
  ),
);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}