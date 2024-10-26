import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:voxmedia/components/nav_bar_option.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool isHover = false;
  int widthClip = 250;

  void setHover(bool val) {
    setState(() {
      isHover = val;
    });
  }

  void setWidthClip(int val) {
    setState(() {
      widthClip = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setHover(true),
      onExit: (_) => setHover(false),
      child: Container(
        width: 200,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x50000000),
              blurRadius: 15,
            )
          ],
          color: Color(0xff202020),
        ),
        child: const Column(
          children: [
            NavBarOption(icon: Icons.person, name: "My Page"),
            NavBarOption(icon: Icons.notifications, name: "Notifications"),
            NavBarOption(icon: Icons.dashboard, name: "Dashboard"),
            NavBarOption(icon: Icons.star, name: "Featured"),
          ],
        ),
      ),
    );
  }
}

class ShapeClipper extends CustomClipper<Rect> {
  final double width;
  final double height;

  const ShapeClipper({
    required this.width,
    required this.height,
  });

  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, width, height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => true;
}
