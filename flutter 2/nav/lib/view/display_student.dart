import 'package:choose/app/common/disply_student.dart';
import 'package:choose/model/student.dart';
import 'package:flutter/material.dart';

class StudentsDisplay extends StatefulWidget {
  const StudentsDisplay({super.key});

  @override
  State<StudentsDisplay> createState() => _StudentsDisplayState();
}

class _StudentsDisplayState extends State<StudentsDisplay> {
  @override
  Widget build(BuildContext context) {
    List<Student> students =
        ModalRoute.of(context)!.settings.arguments as List<Student>;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Center(
            child: Text("Student Details"),
          ),
        ),
        body: students.isNotEmpty
            ? DisplayStudent(
                lstStudents: students,
              )
            : const Center(
                child: Text("No Data Found"),
              ));
  }
}
