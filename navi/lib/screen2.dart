import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {

  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('value found'),
          ],
        ),
      ),
    );
  }
}
