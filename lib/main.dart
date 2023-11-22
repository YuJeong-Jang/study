import 'package:flutter/material.dart';
import 'package:study_netflix/screen/home_screen.dart';
import 'package:study_netflix/screen/more_screen.dart';
import 'package:study_netflix/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

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
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  HomeScreen(),
                  // Container(
                  //   child: Center(child: Text('home')),
                  // ),
                  Container(
                    child: Center(child: Text('search')),
                  ),
                  Container(
                    child: Center(child: Text('save')),
                  ),
                  MoreScreen()
                  // Container(
                  //   child: Center(child: Text('more')),
                  // )
                ],
              ),
              bottomNavigationBar: Bottom()),
        ));
  }
}
