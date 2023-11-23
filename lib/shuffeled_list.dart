import 'package:flutter/material.dart';

class ShuffeledList extends StatefulWidget {
  List<String> shuffeledStudentList;
  const ShuffeledList(List<String> studentList, {super.key, studentList});
  @override
  State<ShuffeledList> createState() => _ShuffeledListState();
}

class _ShuffeledListState extends State<ShuffeledList> {

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}