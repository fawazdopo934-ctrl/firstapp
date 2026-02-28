import 'package:flutter/material.dart';

class ActusPage extends StatefulWidget {
  const ActusPage({super.key});

  static String title = "Actus";
  @override
  State<ActusPage> createState() => _ActusPageState();
}

class _ActusPageState extends State<ActusPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Liste de status"),
    );
  }
}
