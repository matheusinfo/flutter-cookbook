import 'package:flutter/material.dart';
import 'package:flutter_docs/about.dart';
import 'package:flutter_docs/instalation.dart';
import 'list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Main(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Painel(),
    Instalation(),
    About(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter - Guia de bolso'),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(child: _widgetOptions.elementAt(_selectedIndex))
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: const Icon(Icons.auto_stories_rounded),
            icon: Icon(Icons.auto_stories_outlined, color: Colors.blue[100]),
            label: 'Documentação',
          ),
          BottomNavigationBarItem(
            activeIcon: const Icon(Icons.flutter_dash_rounded),
            icon: Icon(
              Icons.flutter_dash_rounded,
              color: Colors.blue[100],
            ),
            label: 'Instalação',
          ),
          BottomNavigationBarItem(
            activeIcon: const Icon(Icons.three_p_rounded),
            icon: Icon(Icons.three_p_rounded, color: Colors.blue[100]),
            label: 'Sobre',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
