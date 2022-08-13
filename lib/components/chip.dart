import 'package:flutter/material.dart';

class ChipComponent extends StatelessWidget {
  const ChipComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.grey.shade800,
        child: const Text('AB'),
      ),
      label: const Text('Aaron Burr'),
    );
  }
}
