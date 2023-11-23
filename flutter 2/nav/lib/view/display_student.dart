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
          leading: const Icon(Icons.arrow_back),
          title: const Center(
            child: Text("Student Details"),
          ),
        ),
        body: students.isNotEmpty
            ? ListView.builder(
                itemCount: students.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title:
                        Text(students[index].fname! + students[index].lname!),
                    subtitle: Text(students[index].address!),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.delete))
                      ],
                    ),
                  );
                })
            : const Center(
                child: Text("No Data Found"),
              ));
  }
}
