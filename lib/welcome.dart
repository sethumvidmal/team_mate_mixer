import 'package:flutter/material.dart';
import 'package:team_mate_mixer/get_students.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title:const Text('Student mixer'),
            backgroundColor: Colors.blue[400],
          ),
        body:const GetStudents(),
      ),
    );
  }
}