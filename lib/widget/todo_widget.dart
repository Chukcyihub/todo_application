import 'package:flutter/material.dart';

class ToDoWidget extends StatefulWidget {
  const ToDoWidget({super.key});

  @override
  State<ToDoWidget> createState() => _ToDoWidgetState();
}

class _ToDoWidgetState extends State<ToDoWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Todo!")),
    );
  }
}
