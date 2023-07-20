import 'package:flutter/material.dart';

class ElevatedBottomSave extends StatefulWidget {
  const ElevatedBottomSave({super.key});

  @override
  State<ElevatedBottomSave> createState() => _ElevatedBottomSaveState();
}

class _ElevatedBottomSaveState extends State<ElevatedBottomSave> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){}, 
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Color(0xFF3DA9FC)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
        minimumSize: MaterialStatePropertyAll(Size(328, 60)),
      ),
      child: const Text('Save', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white))
    );
  }
}