import 'package:flutter/material.dart';

Widget appBar(String text) {
  return AppBar(
    title: Text(
      text,
      // style: AppTheme.screenTitleStyle(),
    ),
    centerTitle: true,
    // leading: IconButton(icon: iconButton, onPressed: () {}),
    //backgroundColor: AppTheme.mainThemeColor(),
    brightness: Brightness.dark,
  );
}
