import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, navigationPath);
      },
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
