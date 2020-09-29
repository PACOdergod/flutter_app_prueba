import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                  'https://elvasomediolleno.guru/wp-content/uploads/2016/06/10-Historias-de-Personas-Famosas-Que-Demuestran-Que-Todo-es-Posible-en-Esta-Vida.jpg'),
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('SL'),
                backgroundColor: Colors.purple[100],
              ))
        ],
      ),
      body: Center(
          child: FadeInImage(
        placeholder: AssetImage('assets/jar-loading.gif'),
        fadeInDuration: Duration(milliseconds: 200),
        image: NetworkImage(
            'https://elvasomediolleno.guru/wp-content/uploads/2016/06/10-Historias-de-Personas-Famosas-Que-Demuestran-Que-Todo-es-Posible-en-Esta-Vida.jpg'),
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.account_balance),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
