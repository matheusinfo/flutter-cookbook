import 'package:flutter/material.dart';

class FloatingActionButtonComponent extends StatelessWidget {
  const FloatingActionButtonComponent({Key? key}) : super(key: key);

  static const String _title = 'Flutter exemplo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botão flutuante'),
      ),
      body: const Center(child: Text('Pressione o botão')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
