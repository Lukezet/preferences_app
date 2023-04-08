import 'package:flutter/material.dart';

import '../Widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  static const String routerName = 'Home';
  

  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    

    
    return Scaffold(
      appBar: MyAppBar(nombreAppBar:Text('Home')),
      drawer: SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Is Dark Mode:'),
          Divider(),
          Text('Genero:'),
          Divider(),
          Text('Nombre de Usuario:')
        ],
      ),
    );
  }
}