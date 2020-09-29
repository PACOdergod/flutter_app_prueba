import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrartAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.account_balance),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  void _mostrartAlert(context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        title: Text('Titulo'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Este es el contenido de la caja de alerta'),
            FlutterLogo(
              size: 100.0,
            )
          ],
        ),
        actions: [
          FlatButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancelar')),
          FlatButton(
              onPressed: () => Navigator.of(context).pop(), child: Text('Ok')),
        ],
      ),
    );
  }
}
