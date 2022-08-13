import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class RouteComponent extends StatelessWidget {
  final String title;
  final String sourceFilePath;
  final Widget child;

  const RouteComponent({
    super.key,
    required this.title,
    required this.sourceFilePath,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.title,
        style: TextStyle(fontSize: 14),
      ),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: WidgetWithCodeView(
              child: this.child,
              sourceFilePath: this.sourceFilePath,
            ),
          ),
        ),
      ),
    );
  }
}
