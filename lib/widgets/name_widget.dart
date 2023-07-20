import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  final String text;
  const NameWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: Text(text, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Color(0xFF094067))),
    );
  }
}