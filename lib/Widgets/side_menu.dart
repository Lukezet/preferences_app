import 'package:flutter/material.dart';

import '../Screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawHeader(),

          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap:() {
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            },
          ),
                    ListTile(
            leading: const Icon(Icons.people_alt),
            title: const Text('People'),
            onTap:() {},
          ),
                    ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap:() {
              //Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
            },
          ),
        ],
      ),
    );
  }
}

class _DrawHeader extends StatelessWidget {
  const _DrawHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(child: Container(),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/menu-img.jpg'),
        fit: BoxFit.cover,        
      )
    ),);
  }
}