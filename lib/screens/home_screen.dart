import 'package:flutter/material.dart';
import 'package:todo_app/widgets/home_scrool.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, 'new_todo_screen');
        },
        backgroundColor: const Color(0xFF3DA9FC),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      backgroundColor: const Color(0xFF3DA9FC),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            const Text('TodoRama', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white)),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30, top: 16),
                  width: 249,
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
                    color: Color.fromARGB(255, 152, 203, 244)
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 8),
                  width: 99,
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomRight: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: TextButton(onPressed: (){}, child: const Text('Search', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xFF3DA9FC)))),
                ),
              ],
            ),
            const SizedBox(height: 22),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index){
                    return const HomeScroolWidget(image: 'assets/image.png', title: 'Shopping', subtitle: 'Milk, Eggs, Juice, ...');
                  }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}