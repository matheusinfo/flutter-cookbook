import 'package:flutter/material.dart';

class AlerDialogComponent extends StatelessWidget {
  const AlerDialogComponent({Key? key}) : super(key: key);

  static const String _title = 'Flutter exemplo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatelessWidget(),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Título'),
          content: const Text('Descrição'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancelar'),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Confirmar'),
              child: const Text('Confirmar'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
