import 'package:flutter/material.dart';
import 'package:james_coin/models/drawer_controller.dart';
import 'package:james_coin/screens/dasboard.dart';
import 'package:james_coin/screens/index.dart';
import 'package:james_coin/screens/login.dart';
import 'package:james_coin/screens/register.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
  // MultiProvider(
  //   providers: [
  //     ChangeNotifierProvider(
  //       create: (context) => MenuController(),
  //     ),
  //   ],
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/loginscreen',
      routes: {
        '/loginscreen': (context) => const Login(),
        '/registerscreen': (context) => const Register(),
        '/dashboard': (context) => const Dashboard(),
        '/index': (context) => const Index(),
      },
    );
  }
}
