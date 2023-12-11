import 'package:softwarica_view/model/teacher.dart';

class TeacherManager {
  static final TeacherManager _instance = TeacherManager._internal();

  factory TeacherManager() {
    return _instance;
  }

  TeacherManager._internal();

  List<Teacher> teachers = [];

  void addTeacher(Teacher teacher) {
    teachers.add(teacher);
  }

  List<Teacher> getTeachers() {
    return teachers;
  }
}
