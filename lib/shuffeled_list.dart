import 'package:flutter/material.dart';

class ShuffeledList extends StatefulWidget {
  const ShuffeledList({super.key,required this.shuffledStudentList});

  final List<String> shuffledStudentList;

  @override
  State<ShuffeledList> createState() => _ShuffeledListState();
}

class _ShuffeledListState extends State<ShuffeledList> {

  late int studentCount = widget.shuffledStudentList.length;  //This is student count
  late int numberOfGroups = widget.shuffledStudentList.length ~/ 5; //This is number of student groups
  late int remainingStudents = widget.shuffledStudentList.length % 5; //This is remaining students after divide
  
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