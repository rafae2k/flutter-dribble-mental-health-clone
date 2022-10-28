// ignore_for_file: prefer_const_constructors

import 'package:dribblementalhealthclone/widgets/feelings.dart';
import 'package:dribblementalhealthclone/widgets/greetings.dart';
import 'package:dribblementalhealthclone/widgets/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(children: [
            Column(children: [
              Greetings(),
              SizedBox(height: 16),
              Search(),
              SizedBox(height: 16),
              Feelings()
            ]),
          ]),
        ),
      ),
    );
  }
}
