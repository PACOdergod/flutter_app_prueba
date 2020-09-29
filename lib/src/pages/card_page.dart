import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),

        //LOS CARDS QUE APARECEN EN PANTALLA
        children: [
          _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.account_balance),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.account_box,
              color: Colors.blue,
            ),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Soy el subtitulo de esta tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: null, child: Text('Cancelar')),
              FlatButton(onPressed: null, child: Text('OK'))
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {
    final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://mott.pe/noticias/wp-content/uploads/2019/03/los-50-paisajes-maravillosos-del-mundo-para-tomar-fotos-1280x720.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            child: Text('Titulo de un card'),
            padding: EdgeInsets.all(20.0),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
