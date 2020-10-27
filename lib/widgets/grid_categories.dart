import 'dart:convert';
import 'package:flutter/material.dart';

String categoriesJson = '{"categories":['
    '{"name":"Exámenes","image":"irukaexamenes.png","id":1}, '
    '{"name":"Fonoaudiologo","image":"irukaoreja.png","id":2}, '
    '{"name":"Dentista","image":"irukadiente.png","id":3}, '
    '{"name":"Fisioterapia","image":"irukafisioterapia.png","id":4}, '
    '{"name":"Vacunas","image":"irukavacuna.png","id":5}, '
    '{"name":"Psicoterapia","image":"irukapsicoterapia.png","id":6}, '
    '{"name":"Natación","image":"irukanatacion.png","id":7}, '
    '{"name":"Maestra","image":"irukamaestra.png","id":8}, '
    '{"name":"Musica","image":"irukamusica.png","id":9}, '
    '{"name":"Oculista","image":"irukalente.png","id":10}, '
    '{"name":"Acompañante","image":"irukaacompanante.png","id":11}, '
    '{"name":"Aptitud","image":"irukaaptitud-fisica.png","id":12}]}';

class GridCategories extends StatefulWidget {
  @override
  _GridCategoriesState createState() => _GridCategoriesState();
}

class _GridCategoriesState extends State<GridCategories> {
  List<dynamic> categories;
  String image;

  @override
  initState() {
    super.initState();

    Map<String, dynamic> decodedCategories = json.decode(categoriesJson);
    categories = decodedCategories['categories'];
  }

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 3,
      children: categories.map((category) {
        return Container(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/events_list");
            },
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.5)),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/${category['image']}",
                        height: 100,
                      ),
                      Text(category['name'])
                    ],
                  ),
                )),
          ),
        );
      }).toList(),
    );
  }
}
