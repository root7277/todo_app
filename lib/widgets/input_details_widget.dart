import 'package:flutter/material.dart';

class InputDetailsWidget extends StatefulWidget {
  final String hintTextDetails;
  const InputDetailsWidget({super.key, required this.hintTextDetails});

  @override
  State<InputDetailsWidget> createState() => _InputDetailsWidgetState();
}

class _InputDetailsWidgetState extends State<InputDetailsWidget> {
  TextEditingController controllerDetails = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 13),
        child: TextField(
          maxLines: 10,
          controller: controllerDetails,
          decoration: InputDecoration(
            hintText: widget.hintTextDetails,
            hintStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
            border: const OutlineInputBorder(),
          ),
        ),
    );
  }
}