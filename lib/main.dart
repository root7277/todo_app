import 'package:flutter/material.dart';
import 'package:todo_app/screens/edit_todo_screen.dart';
import 'package:todo_app/screens/home_screen.dart';
import 'package:todo_app/screens/new_todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_screen',
      routes: {
        'home_screen':(context) => const HomeScreen(),
        'new_todo_screen':(context) => const NewTodeScreen(),
        'edit_todo_screen':(context) => const EditTodoScreen(),        
      },
    );
  }
}