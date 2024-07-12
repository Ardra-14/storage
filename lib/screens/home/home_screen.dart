import 'package:flutter/material.dart';
import 'package:sample_app/screens/widgets/add_student_widget.dart';
import 'package:sample_app/screens/widgets/list_student_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
        AddStudentWidget(),
        Expanded(child: ListStudentWidget())
      ],)),
    );
  }
}