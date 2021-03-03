import 'package:flutter/material.dart';
import 'package:todo_list/main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0; 

  @override
  Widget build(BuildContext context) {
    final tabs = [
      Container(),
      Container(),
    ]; 

    var bottomNavigationBar2 = BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index; 
        }),
        items: [
          BottomNavigationBarItem(
          icon: Icon(Icons.fact_check_outlined),
          label: 'Todo',
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.done, size: 28),
          label: 'Completed',
          ),
        ],

        );
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title), 
      ),
      bottomNavigationBar: bottomNavigationBar2 ,
    );
  }
}
