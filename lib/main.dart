import 'package:bottam_bar_screens/face_book.dart';
import 'package:bottam_bar_screens/list_view_demo.dart';
import 'package:bottam_bar_screens/whats_app.dart';
import 'package:bottam_bar_screens/third.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List<Widget> listOfWidgets = [
    const WhatsApp(),
    const FaceBook(),
    const ListViewDemo(),
    const MyWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.first_page,
              color: Colors.black,
            ),
            label: 'whatssp',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.next_plan,
              color: Colors.black,
            ),
            label: 'FaceBook',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            label: 'arrow',
            icon: Icon(
              Icons.arrow_outward,
              color: Colors.black,
            ),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
      ),
      body: Center(
        child: listOfWidgets.elementAt(currentIndex),
      ),
    );
  }
}
