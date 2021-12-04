import 'package:error_message/error_message.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    themeMode: ThemeMode.system,
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    home: MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ErrorMessage(
        icon: Icon(Icons.error),
        title: "Error Title",
        description: "Error description",
      )),
    );
  }
}
