import 'package:flutter/material.dart';
import 'package:poc_iruka_flutter/widgets/drawer.dart';
import 'package:poc_iruka_flutter/widgets/grid_categories.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: const Text('INICIO'),
      ),
      drawer: DrawerApp(),
      body: GridCategories(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home,
              color: Color.fromRGBO(0, 83, 118, 1.0),
            ),
            label: 'Incio',
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.calendar_today,
              color: Color.fromRGBO(0, 83, 118, 1.0),
            ),
            label: 'Calendario',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Color.fromRGBO(0, 83, 118, 1.0),
            ),
            label: 'Eventos',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.help,
              color: Color.fromRGBO(0, 83, 118, 1.0),
            ),
            label: 'Ayuda',
          )
        ],
      ),
    );
  }
}
