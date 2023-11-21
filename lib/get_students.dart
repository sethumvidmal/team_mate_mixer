import 'package:flutter/material.dart';

class GetStudents extends StatefulWidget {
  const GetStudents({super.key});

  @override
  State<GetStudents> createState() => _GetStudentsState();
}

class _GetStudentsState extends State<GetStudents> {
  final myController = TextEditingController();
  List<String> studentList = [];

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: myController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter student name',
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(16.0),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          studentList.contains(myController.text)
                              ? showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text("Already added!"),
                                      content: const Text(
                                          "This name is already contains."),
                                      actions: <Widget>[
                                        TextButton(
                                            style: TextButton.styleFrom(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .labelLarge,
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('Ok'))
                                      ],
                                    );
                                  })
                              : studentList.add(myController.text);
                        });
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text('Add'),
                      )
                    ),
                ),
                Container(
                  margin: const EdgeInsets.all(16.0),
                  child: TextButton(
                      onPressed: () {
                        studentList.shuffle();
                        setState(() {});
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.green[800],
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 20)),
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text('Shuffle'),
                      )
                    ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}