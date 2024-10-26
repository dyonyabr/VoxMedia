import 'package:flutter/material.dart';

class NavBarOption extends StatefulWidget {
  final IconData icon;
  final String name;

  const NavBarOption({
    super.key,
    required this.icon,
    required this.name,
  });

  @override
  State<NavBarOption> createState() => NavBarOptionState();
}

class NavBarOptionState extends State<NavBarOption> {
  bool isHover = false;
  bool selected = false;

  void setHover(bool val) {
    setState(() {
      isHover = val;
    });
  }

  void setSelected(bool val) {
    setState(() {
      selected = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setHover(true),
        onExit: (_) => setHover(false),
        child: Container(
          color: Color(
            (isHover && !selected)
                ? 0xff303030
                : (selected)
                    ? 0xff151515
                    : 0x00000000,
          ),
          height: 50,
          width: 200,
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Icon(
                widget.icon,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                widget.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
