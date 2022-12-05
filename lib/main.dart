// ************************************************************
// ************************************************************
// ***     Copyright 2022 One Chat. All rights reserved.    ***
// ***          by Jo@chim Ned@ouk@ (MacNight_nj).          ***
// ************************************************************
// ************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jocom/welcome/loading_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jocom',
      theme: ThemeData(
        fontFamily: 'Comfortaa_bold',
      ),
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}
