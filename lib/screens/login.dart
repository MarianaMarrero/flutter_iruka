import 'package:flutter/material.dart';
import 'package:poc_iruka_flutter/bloc/bloc.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<Bloc>(context);

    return new Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 25.0),
      child: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            showLogo(),
            email(bloc),
            password(bloc),
            button(bloc)
          ],
        ),
      ),
    );
  }

  Widget showLogo() {
    return Center(child: Image.asset('assets/images/logo.png'));
  }

  Widget email(Bloc bloc) {
    return StreamBuilder<Object>(
        stream: bloc.email,
        builder: (context, snapshot) {
          return Container(
            width: 350.0,
            margin: EdgeInsets.only(top: 15.0),
            child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Mail',
                  errorText: snapshot.error,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22.5)),
                  ),
                ),
                onChanged: bloc.changeEmail),
          );
        });
  }

  Widget password(Bloc bloc) {
    return StreamBuilder<Object>(
        stream: bloc.password,
        builder: (context, snapshot) {
          return Container(
            width: 350.0,
            margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
            child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  errorText: snapshot.error,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22.5)),
                  ),
                ),
                onChanged: bloc.changePassword),
          );
        });
  }

  Widget button(Bloc bloc) {
    return StreamBuilder<Object>(
        stream: bloc.submitValid,
        builder: (context, snapshot) {
          return SizedBox(
            width: 300.0,
            child: RaisedButton(
              /* onPressed: () {
                Navigator.pushNamed(context, "/inicio");
              }, */
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              color: Color.fromRGBO(0, 83, 118, 1.0),
              child: const Text('INGRESAR',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
              onPressed: snapshot.hasError
                  ? null
                  : () {
                      Navigator.pushNamed(context, "/inicio");
                    },
            ),
          );
        });
  }
}
