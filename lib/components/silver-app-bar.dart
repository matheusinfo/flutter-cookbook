import 'package:flutter/material.dart';

class SilverAppBarComponent extends StatelessWidget {
  const SilverAppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        expandedHeight: 150.0,
        flexibleSpace: const FlexibleSpaceBar(
          title: Text('Acentos disponíveis'),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_circle),
            tooltip: 'Adicione nova entrada',
            onPressed: () {/* ... */},
          ),
        ]);
  }
}
