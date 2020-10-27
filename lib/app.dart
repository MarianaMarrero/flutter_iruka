import 'package:flutter/material.dart';
import 'package:poc_iruka_flutter/bloc/bloc.dart';
import 'package:poc_iruka_flutter/screens/login.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<Bloc>(
        create: (context) => Bloc(),
        dispose: (context, bloc) => bloc.dispose(),
        child: new Scaffold(body: Login()));
  }
}
