import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/widgets/elevated_bottom.dart';
import 'package:todo_app/widgets/input_widget.dart';
import 'package:todo_app/widgets/name_widget.dart';

class NewTodeScreen extends StatefulWidget {
  const NewTodeScreen({super.key});

  @override
  State<NewTodeScreen> createState() => _NewTodeScreenState();
}

class _NewTodeScreenState extends State<NewTodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3DA9FC),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13, top: 50),
            child: Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset('assets/icon_back.svg')
                ),
                const SizedBox(width: 100),
                const Text('TodoRama', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white)),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Container(
              width: 500,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: Colors.white,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 70),
                  NameWidget(text: 'Name'),
                  SizedBox(height: 15),
                  InputWidget(width: 328, heigth: 40, hintText: 'Enter the name'),
                  SizedBox(height: 50),
                  NameWidget(text: 'Details'),
                  SizedBox(height: 15),
                  InputWidget(width: 328, heigth: 230, hintText: 'Enter the details'),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedBottomSave(),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}