import 'package:flutter/material.dart';
import 'package:softwarica_view/model/student.dart';
import 'package:softwarica_view/model/student_manager.dart';

class ViewStudent extends StatefulWidget {
  const ViewStudent({super.key});

  @override
  State<ViewStudent> createState() => _ViewStudentState();
}

class _ViewStudentState extends State<ViewStudent> {
  StudentManager studentManager = StudentManager();

  List<Student> students = [];

  @override
  void initState() {
    super.initState();

    students = List.from(studentManager.getStudents());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Center(
            child: Text("Students"),
          ),
        ),
        body: students.isNotEmpty
            ? ListView.separated(
                separatorBuilder: (context, index) => const Divider(),
                itemCount: students.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      children: [
                        Text(
                            "Name: ${students[index].fName} ${students[index].lName}"),
                        Text("id: ${students[index].studentId}"),
                        Text("Teacher: ${students[index].teacher}"),
                      ],
                    ),
                  );
                },
              )
            : const Center(
                child: Text(" No Students "),
              ));
  }
}
