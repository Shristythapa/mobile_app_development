import 'package:choose/app/common/disply_student.dart';
import 'package:choose/model/student.dart';
import 'package:choose/routes/app_routes.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';

class StudentDetails extends StatefulWidget {
  const StudentDetails({super.key});

  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  final globalkey = GlobalKey<FormState>();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController address = TextEditingController();

  String selectedValue = "";

//third party library dropdown
  // TextEditingController city = TextEditingController();
  // final _dropdownEditingController =
  //     DropdownEditingController(value: "Kathmandu");
  // var cities = ["Kathmandu", "Pokhara", "Chitwan", "Bhaktapur"];


  ////builtin dropdown
  final items = [
    const DropdownMenuItem(value: 'kathmandu', child: Text("kathmandu")),
    const DropdownMenuItem(value: 'Pokhara', child: Text('Pokhara')),
    const DropdownMenuItem(value: 'Chitwan', child: Text('Chitwan')),
  ];

  String? city;

  List<Student>? lstStudent = [];
  void _addStudentToList(Student student) {
    lstStudent!.add(student);
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
          child: Text("Student Details"),
        ),
      ),
      body: Form(
        key: globalkey,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: firstName,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter first Name";
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              controller: lastName,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter last Name";
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              controller: age,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Age',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter age";
                } else {
                  return null;
                }
              },
            ),
            const Text("Select Gender"),
            RadioListTile(
              title: const Text('Female'),
              value: 'Female',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                });
              },
            ),
            RadioListTile(
              title: const Text('Male'),
              value: 'Male',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                });
              },
            ),
            RadioListTile(
              title: const Text('Others'),
              value: 'Others',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                });
              },
            ),
            TextFormField(
              controller: address,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Address";
                } else {
                  return null;
                }
              },
            ),
            // TextDropdownFormField(
            //   options: cities,
            //   controller: _dropdownEditingController,
            //   decoration: const InputDecoration(
            //       border: OutlineInputBorder(),
            //       suffixIcon: Icon(Icons.arrow_drop_down),
            //       labelText: "Select your city"),
            // ),

            ////builtin dropdown
            DropdownButtonFormField(
              items: items,
              onChanged: (value) {
                setState(() {
                  city = value;
                });
              },
              hint: const Text('Select City'),
              decoration: const InputDecoration(
                  labelText: 'Select City', border: OutlineInputBorder()),
              validator: (value) {
                if (value == null) {
                  return 'Please select city';
                }
                return null;
              },
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (globalkey.currentState!.validate()) {
                        Student student = Student(
                            fname: firstName.text,
                            lname: lastName.text,
                            age: int.parse(age.text),
                            address: address.text,
                            gender: selectedValue,
                            city: city);
                        _addStudentToList(student);
                        debugPrint(lstStudent!.length.toString());
                      }
                    },
                    child: const Text("Save Student"))),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.studentsDisplay,
                      arguments: lstStudent);
                },
                child: const Text("Display Student"),
              ),
            ),
          
            Expanded(
                child: DisplayStudent(
              lstStudents: lstStudent!,
            )),
          ],
        ),
      ),
    );
  }
}



///USE LISTTILE