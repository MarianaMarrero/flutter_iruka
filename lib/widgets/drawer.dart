import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: getDrawer(context),
    );
  }
}

Drawer getDrawer(BuildContext context) {
  // var header = DrawerHeader(child: Text(""));

  Widget getItem(Image image, String description, String route) {
    return Column(
      children: [
        image,
        Container(margin: EdgeInsets.only(top: 16.0)),
        Text(
          description,
          style: TextStyle(
              fontSize: 20.0, color: Colors.white, fontFamily: 'Oswald'),
        ),
        Container(margin: EdgeInsets.only(top: 10.0)),
      ],
      /*  leading: icon,
        title: Text(description), */
      /*   onTap: () {
          Navigator.pushNamed(context, route);
        }, */
    );
  }

  Container getList() {
    return Container(
      color: Color.fromRGBO(60, 67, 91, 0.95),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 0),
            child: Image.asset(
              "assets/images/irukaicono-close.png",
              width: 30,
              height: 30,
              //alignment:
            ),

            // color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Container(
              margin: EdgeInsets.only(bottom: 16.0),
              height: 1.0,
              color: Colors.grey,
            ),
          ),
          getItem(Image.asset('assets/images/iruka-icono-padre.png'), 'ADULTO',
              '/configuracion'),
          getItem(
              Image.asset('assets/images/irukaicono-niño.png'), 'NIÑO', '/'),
          getItem(Image.asset('assets/images/irukaicono-add.png'),
              'AGREGAR CATEGORÍA', '/bateria'),
          getItem(Image.asset('assets/images/irukaicono-info.png'), 'CONTACTO',
              '/bateria'),
          getItem(Image.asset('assets/images/irukaicono-setting.png'),
              'CONFIGURACIÓN', '/bateria'),
          /*   Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Container(
              margin: EdgeInsets.only(bottom: 16.0),
              height: 1.0,
              color: Colors.grey,
            ),
          ), */
          getItem(Image.asset('assets/images/irukaicono-exit.png'), 'SALIR',
              '/bateria'),
        ],
      ),
    );
  }

  return Drawer(child: getList());
}
