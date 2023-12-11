import 'package:choose/view/arithemetic_view.dart';
import 'package:choose/view/container_view.dart';
import 'package:choose/view/dashboard_view.dart';
import 'package:choose/view/display_student.dart';
import 'package:choose/view/expanded_flexible_view.dart';
import 'package:choose/view/gird_View.dart';
import 'package:choose/view/image_view.dart';
import 'package:choose/view/output_view.dart';
import 'package:choose/view/random_view.dart';
import 'package:choose/view/rows_columns.dart';
import 'package:choose/view/splash.dart';
import 'package:choose/view/students_details.dart';
import 'package:choose/view/time_date.dart';

class AppRoutes {
  AppRoutes._();

  static const String dashboardRoute = '/';
  static const String arithemticRoute = './arithemtic';
  static const String outputRoute = '/output';
  static const String randomRoute = './random';
  static const String containerRoute = './container';
  static const String imageRoute = './image';
  static const String expandedRoute = './expanded';
  static const String colRowRoute = './colRow';
  static const String studentDetails = './studentDetails';
  static const String studentsDisplay = './studentsDisplay';
  static const String gridView = './gridView';
  static const String splashScreen = './splashView';
  static const String dateTime = './dateTime';

  static getApplicationRoute() {
    return {
      dashboardRoute: (context) => const DashboardView(),
      outputRoute: (context) => const OutputView(),
      arithemticRoute: (context) => const ArithemeticView(),
      randomRoute: (context) => const RandomView(),
      containerRoute: (context) => const ContainerView(),
      imageRoute: (context) => const ImageView(),
      expandedRoute: (context) => const ExpandedFlexible(),
      colRowRoute: (context) => const RowsColumns(),
      studentDetails: (context) => const StudentDetails(),
      studentsDisplay: (context) => const StudentsDisplay(),
      gridView: (context) => const GridViewView(),
      splashScreen: (context) => const SplashScreen(),
      dateTime: (context) => const TimeDate(),
    };
  }
}
