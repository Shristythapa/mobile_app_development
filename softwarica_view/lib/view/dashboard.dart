import 'package:flutter/material.dart';
import 'package:softwarica_view/routes/app_routes.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Dashboard")),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.createTeacherRoute);
                  },
                  child: const Text("Create Teacher")),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.viewTeacherRoute);
                  },
                  child: const Text("View Teachers")),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.createStudentRoute);
                  },
                  child: const Text("Create Student")),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.viewStudentRoute);
                  },
                  child: const Text("View Student")),
            ),
          ],
        ),
      ),
    );
  }
}
