import 'package:flutter/material.dart';

class VerticalTab extends StatelessWidget {
  const VerticalTab({Key? key, required this.icon}) : super(key: key);
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: -1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Tab(
          icon: icon,
        ),
      ),
    );
  }
}
