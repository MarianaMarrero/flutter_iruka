import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => new _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  // This navigator state will be used to navigate different pages
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      /*  backgroundColor: Colors.red,
      selectedItemColor: Color.fromRGBO(0, 83, 118, 1.0),
      unselectedItemColor: Colors.white, */
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
      onTap: _onTap,
      currentIndex: _currentTabIndex,
    );
  }

  _onTap(int tabIndex) {
    switch (tabIndex) {
      case 0:
        Navigator.pushNamed(context, "/inicio");
        break;
      case 1:
        Navigator.pushNamed(context, "/calendar");
        break;
      case 2:
        Navigator.pushNamed(context, "/events_list");
        break;
      case 3:
        Navigator.pushNamed(context, "/help");
        break;
    }
    setState(() {
      _currentTabIndex = tabIndex;
    });
  }
}
