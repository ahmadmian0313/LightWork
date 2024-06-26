import 'package:flutter/material.dart';
import 'package:lightwork/AppModules/ChatModule/Views/chat_list_view.dart';

import 'AppModules/HomeModule/Views/Components/app_root_page.dart';
import 'AppModules/HomeModule/Views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AppRootPage(),
    );
  }
}
