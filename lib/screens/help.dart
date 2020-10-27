import 'package:flutter/material.dart';
import 'package:poc_iruka_flutter/widgets/appbar.dart';
import 'package:poc_iruka_flutter/widgets/bottom_navigation_bar.dart';

import 'package:poc_iruka_flutter/widgets/drawer.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar('EVENTOS'),
        drawer: DrawerApp(),
        body: Text('Calendario'),
        bottomNavigationBar: BottomNavigator());
  }
}
