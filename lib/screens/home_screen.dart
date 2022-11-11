import 'package:flutter/material.dart';
import 'package:todo_app/widget/home_widget.dart';
import 'package:todo_app/widget/todo_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List _myAppBar = <Widget>[
    Text("Todo"),
    Text("My Todo's"),
  ];
  static const List _myWidgets = <Widget>[
    HomeWidget(),
    ToDoWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(200, 220, 70, 70),
        centerTitle: true,
        title: _myAppBar[_selectedIndex],
      ),
      body: _myWidgets.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: "todo",
          ),
        ],
      ),
    );
  }
}
