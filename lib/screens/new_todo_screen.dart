import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/widgets/name_widget.dart';

import '../modul/list.dart';


class NewTodeScreen extends StatefulWidget {
  const NewTodeScreen({super.key});

  @override
  State<NewTodeScreen> createState() => _NewTodeScreenState();
}

class _NewTodeScreenState extends State<NewTodeScreen> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerDetails = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  const NameWidget(text: 'Name'),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, right: 13),
                      child: TextField(
                        maxLines: 1,
                        controller: controllerName,
                        decoration: const InputDecoration(
                            hintText: 'Enter the name',
                            hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
                            border: OutlineInputBorder(),
                        ),
                      ),
                  ),
                  const SizedBox(height: 50),
                  const NameWidget(text: 'Details'),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, right: 13),
                      child: TextField(
                        maxLines: 10,
                        controller: controllerDetails,
                        decoration: const InputDecoration(
                            hintText: 'Enter the details',
                            hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
                            border: OutlineInputBorder(),
                        ),
                      ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          listTitle.add(controllerName.text);
                          listSubtitle.add(controllerDetails.text);
                          Navigator.pushNamed(context, 'home_screen');
                        }, 
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Color(0xFF3DA9FC)),
                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                          minimumSize: MaterialStatePropertyAll(Size(328, 60)),
                        ),
                        child: const Text('Save', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white))
                      ),
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