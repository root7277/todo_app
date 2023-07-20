import 'package:flutter/material.dart';

class HomeScroolWidget extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  const HomeScroolWidget({super.key, required this.image, required this.title, required this.subtitle});

  @override
  State<HomeScroolWidget> createState() => _HomeScroolWidgetState();
}

class _HomeScroolWidgetState extends State<HomeScroolWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, 'edit_todo_screen'),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(widget.image),
                radius: 30,
              ),
              subtitle: Text(widget.subtitle, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 9, 64, 103))),
              
              title: Text(widget.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xFF094067))),
            ),
          ),
          const SizedBox(height: 19),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Container(height: 2, color: const Color(0xFF90B4CE)),
          ),
        ],
      ),
    );
  }
}