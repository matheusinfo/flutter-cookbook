import 'package:flutter/material.dart';

class SnackBarComponent extends StatelessWidget {
  const SnackBarComponent({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

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
    return ElevatedButton(
      child: const Text('Mostrar Snackbar'),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Sou uma Snackbar!'),
            action: SnackBarAction(
              label: 'Ação',
              onPressed: () {
                // Code to execute.
              },
            ),
          ),
        );
      },
    );
  }
}
