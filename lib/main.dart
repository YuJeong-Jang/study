import 'package:flutter/material.dart';
import 'package:study_netflix/widget/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'jayFlix',
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.black,
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.white, brightness: Brightness.dark)),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
              body: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Container(
                    child: const Center(child: Text('home')),
                  ),
                  Container(
                    child: const Center(child: Text('search')),
                  ),
                  Container(
                    child: const Center(child: Text('save')),
                  ),
                  Container(
                    child: const Center(child: Text('more')),
                  )
                ],
              ),
              bottomNavigationBar: const Bottom()),
        ));
  }
}
