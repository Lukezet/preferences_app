import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widgets/widgets.dart';
import '../providers/theme_providers.dart';
import '../share_preferences/preferences.dart';

class SettingsScreen extends StatefulWidget {
   
  static const String routerName = 'Settings';

  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  // bool isDarkMode = false;
  // int gender = 1;
  // String name = 'Pedro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(nombreAppBar:Text('Settings')),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const Text('Ajustes',style:  TextStyle(fontSize: 40, fontWeight: FontWeight.w300 ),),
              
              const Divider(),
              SwitchListTile.adaptive(
                title: const Text('DarkMode'),
                value: Preferences.isDarkMode,
                onChanged: (value){
                  Preferences.isDarkMode = value;
                  final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

                  value ? themeProvider.setDarkMode() : themeProvider.setLightMode(); 
                  setState(() {});
                }),
              
              const Divider(),
              RadioListTile<int>(
                value: 1,
                groupValue: Preferences.gender,
                title: const Text('Masculino'),
                onChanged: (value){
                  Preferences.gender = value ?? 1;
                  setState(() {});
                }
                ),
              
              const Divider(),
              RadioListTile<int>(
                value: 2,
                groupValue: Preferences.gender,
                title: const Text('Femenino'),
                onChanged: (value){
                  Preferences.gender = value ?? 2;
                  setState(() {});
                }
                ),
              
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: TextFormField(
                  initialValue: Preferences.name,
                  onChanged: ( value ){
                    Preferences.name = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del Usuario'
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}