import 'package:softwarica_view/model/student.dart';

class StudentManager {
  static final StudentManager _instance = StudentManager._internal();

  factory StudentManager() {
    return _instance;
  }

  StudentManager._internal();

  List<Student> students = [];

  void addStudent(Student student) {
    students.add(student);
  }

  List<Student> getStudents() {
    return students;
  }
}
