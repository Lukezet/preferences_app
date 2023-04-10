import 'package:flutter/material.dart';
import 'package:preferences_app/providers/theme_providers.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:provider/provider.dart';

import 'Screens/home_screen.dart';
import 'Screens/settings_screen.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  
  await Preferences.init();//! Para guardar en cache sin base de datos https://pub.dev/packages/shared_preferences

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: ( _ )=> ThemeProvider(isDarkMode: Preferences.isDarkMode))
    ],
    
    child: const MyApp(),
    
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName: ( _ ) => const HomeScreen(),
        SettingsScreen.routerName: ( _ ) => const SettingsScreen(),
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}