import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final double width;
  final double heigth;
  final String hintText;
  const InputWidget({super.key, required this.width, required this.heigth, required this.hintText});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: Container(
        padding: const EdgeInsets.only(left: 7, top: 5),
        width: widget.width,
        height: widget.heigth,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF094067),
            width: 2,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          color: Colors.white
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
            hintMaxLines: 5,
            border: InputBorder.none
          ),
        ),
      ),
    );
  }
}