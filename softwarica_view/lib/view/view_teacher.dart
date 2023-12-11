import 'package:flutter/material.dart';
import 'package:softwarica_view/model/teacher.dart';
import 'package:softwarica_view/model/teacher_manager.dart';

class ViewTeacher extends StatefulWidget {
  const ViewTeacher({super.key});

  @override
  State<ViewTeacher> createState() => _ViewTeacherState();
}

class _ViewTeacherState extends State<ViewTeacher> {
  TeacherManager teacherManager = TeacherManager();

  List<Teacher> teachers = [];

  @override
  void initState() {
    super.initState();

    teachers = List.from(teacherManager.getTeachers());
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
            child: Text("Teachers"),
          ),
        ),
        body: teachers.isNotEmpty
            ? ListView.separated(
                separatorBuilder: (context, index) => const Divider(),
                itemCount: teachers.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      children: [
                        Text(
                            "Name: ${teachers[index].fName} ${teachers[index].lName}"),
                        Text("id: ${teachers[index].teacherId}"),
                   
                      ],
                    ),
                  );
                },
              )
            : const Center(
                child: Text(" No Teachers "),
              ));
  }
}
