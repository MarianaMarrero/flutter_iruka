import 'package:flutter/material.dart';
import 'package:poc_iruka_flutter/widgets/appbar.dart';
import 'package:poc_iruka_flutter/widgets/bottom_navigation_bar.dart';

import 'package:poc_iruka_flutter/widgets/drawer.dart';
import 'package:poc_iruka_flutter/widgets/grid_categories.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: appBar('INICIO'),
        drawer: DrawerApp(),
        body: GridCategories(),
        bottomNavigationBar: BottomNavigator());
  }
}
