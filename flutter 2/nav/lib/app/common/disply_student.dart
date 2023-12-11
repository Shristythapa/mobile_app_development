import 'package:choose/model/student.dart';
import 'package:flutter/material.dart';

class DisplayStudent extends StatelessWidget {
  const DisplayStudent({
    super.key,
    required this.lstStudents,
  });

  final List<Student> lstStudents;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: lstStudents.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar( SnackBar(
                  content: Text(
                      "${lstStudents[index].address}")));
            },
            child: SizedBox(
              height: 200,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.amber,
                  child: Center(
                      child: Text(
                          "${lstStudents[index].fname} ${lstStudents[index].lname} \n ${lstStudents[index].address}",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)))),
            ),
          );
        });
  }
}
