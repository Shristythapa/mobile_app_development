import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:softwarica_view/model/teacher.dart';
import 'package:softwarica_view/model/teacher_manager.dart';

class CreateTeacher extends StatefulWidget {
  const CreateTeacher({Key? key}) : super(key: key);

  @override
  State<CreateTeacher> createState() => _CreateTeacherState();
}

class _CreateTeacherState extends State<CreateTeacher> {
  TextEditingController teacherIdController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController fNameController = TextEditingController();
  TeacherManager teacherManager = TeacherManager();
  final globalkey = GlobalKey<FormState>();

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
          child: Text("Create Teacher"),
        ),
      ),
      body: Form(
        key: globalkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                controller: teacherIdController,
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (globalkey.currentState!.validate()) {
                      teacherManager.addTeacher(
                        Teacher(
                          teacherId: teacherIdController.text,
                          fName: fNameController.text,
                          lName: lNameController.text,
                        ),
                      );
                      
                    }
                  },
                  child: const Text("Save Teacher"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
