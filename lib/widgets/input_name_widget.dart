import 'package:flutter/material.dart';

class InputNameWidget extends StatefulWidget {
  
  final String hintText;
  const InputNameWidget({super.key, required this.hintText});

  @override
  State<InputNameWidget> createState() => _InputNameWidgetState();
}

class _InputNameWidgetState extends State<InputNameWidget> {
  TextEditingController controllerName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 13),
        child: TextField(
          maxLines: 1,
          controller: controllerName,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
            border: const OutlineInputBorder(),
          ),
        ),
    );
  }
}