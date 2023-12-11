import 'package:softwarica_view/view/create_student.dart';
import 'package:softwarica_view/view/create_teacher.dart';
import 'package:softwarica_view/view/dashboard.dart';
import 'package:softwarica_view/view/view_student.dart';
import 'package:softwarica_view/view/view_teacher.dart';

class AppRoutes {
  AppRoutes._();

  static const String dashboardRoute = './dashboard';
  static const String createTeacherRoute = './createTeacher';
  static const String viewTeacherRoute = './viewTeacher';
  static const String createStudentRoute = './createStudent';
  static const String viewStudentRoute = './viewStudentRoute';

  static getApplicationRoute() {
    return {
      dashboardRoute: (context) => const DashboardView(),
      createTeacherRoute: (context) => const CreateTeacher(),
      createStudentRoute: (context) => const CreateStudent(),
      viewStudentRoute: (context) => const ViewStudent(),
      viewTeacherRoute: (context) => const ViewTeacher(),
    };
  }
}
