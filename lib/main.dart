import 'package:beauti_website/HomeScreen.dart';
import 'package:beauti_website/scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Siya Bridal Studio",
      scrollBehavior: CustomScrollBehavior(),
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: "Poppins",
      ),
      home: const HomeScreen(),
    );
  }
}
