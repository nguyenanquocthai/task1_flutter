import 'package:flutter/material.dart';

class defaultwidget extends StatelessWidget {
  const defaultwidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
