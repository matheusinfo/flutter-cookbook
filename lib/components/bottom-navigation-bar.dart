import 'package:flutter/material.dart';

class BottomNavigationComponent extends StatefulWidget {
  const BottomNavigationComponent({Key? key}) : super(key: key);

  @override
  State<BottomNavigationComponent> createState() => _BottomNavigationComponentState();
}

class _BottomNavigationComponentState extends State<BottomNavigationComponent> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Menu',
      style: optionStyle,
    ),
    Text(
      'Index 1: Negócios',
      style: optionStyle,
    ),
    Text(
      'Index 2: Escola',
      style: optionStyle,
    ),
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
        title: const Text('BottomNavigationBar Exemplo'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Negócios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Escola',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
