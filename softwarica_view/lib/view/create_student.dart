import 'package:flutter/material.dart';
import 'package:softwarica_view/model/student.dart';
import 'package:softwarica_view/model/student_manager.dart';
import 'package:softwarica_view/model/teacher_manager.dart';

class CreateStudent extends StatefulWidget {
  const CreateStudent({super.key});

  @override
  State<CreateStudent> createState() => _CreateStudentState();
}

class _CreateStudentState extends State<CreateStudent> {
  TextEditingController studentIdController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController fNameController = TextEditingController();

  final globalkey = GlobalKey<FormState>();

  TeacherManager teacherManager = TeacherManager();
  StudentManager studentManager = StudentManager();
  late List<DropdownMenuItem<String>> items = [];

  String? teacher;
  @override
  void initState() {
    super.initState();

    // Initialize items in initState
    items = teacherManager.getTeachers().map((teacher) {
      return DropdownMenuItem<String>(
        value: teacher.fName,
        child: Text('${teacher.fName} ${teacher.lName}'),
      );
    }).toList();
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
          child: Text("Create Student"),
        ),
      ),
      body: Form(
          key: globalkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: studentIdController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter id',
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter id";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: fNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter first name";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: lNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Last name";
                    } else {
                      return null;
                    }
                  },
                ),
                DropdownButtonFormField(
                  items: items,
                  onChanged: (value) {
                    setState(() {
                      teacher = value;
                    });
                  },
                  hint: const Text('Select Teacher'),
                  decoration: const InputDecoration(
                      labelText: 'Select Teacher',
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select teacher';
                    }
                    return null;
                  },
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          if (globalkey.currentState!.validate()) {
                            studentManager.addStudent(Student(
                              studentId: studentIdController.text,
                              fName: fNameController.text,
                              lName: lNameController.text,
                              teacher: teacher!,
                            ));
                          }
                        },
                        child: const Text("Save Student"))),
              ],
            ),
          )),
    );
  }
}
