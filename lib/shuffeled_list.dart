import 'package:flutter/material.dart';

class ShuffeledList extends StatefulWidget {
  const ShuffeledList({super.key,required this.shuffledStudentList});

  final List<String> shuffledStudentList;

  @override
  State<ShuffeledList> createState() => _ShuffeledListState();
}

class _ShuffeledListState extends State<ShuffeledList> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Team mate mixer'),
          backgroundColor: Colors.blue[400],
        ),
        body:  Text('${widget.shuffledStudentList}'),
      ),
    );
  }
}