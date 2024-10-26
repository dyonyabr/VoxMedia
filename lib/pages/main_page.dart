import 'package:flutter/material.dart';
import 'package:voxmedia/components/nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff151515),
      body: Column(
        children: [
          NavBar(),
        ],
      ),
    );
  }
}
