// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobcar/shared/colors.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          ListTile(
              title: Text(
                'Homepage',
                style: TextStyle(color: pColor),
              ),
              onTap: () {}),
          ListTile(
              title: Text(
                'Menu item 2',
                style: TextStyle(color: pColor),
              ),
              onTap: () {}),
          ListTile(
              title: Text(
                'Menu item 3',
                style: TextStyle(color: pColor),
              ),
              onTap: () {}),
          ListTile(
            title: Text(
              'Menu item 4',
              style: TextStyle(color: pColor),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
