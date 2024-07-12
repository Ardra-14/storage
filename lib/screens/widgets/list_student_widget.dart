import 'package:flutter/material.dart';
import 'package:sample_app/db/functions/db_functions.dart';
import 'package:sample_app/db/model/data_model.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (BuildContext ctx, List<StudentModel> studentList, Widget?child) {
        return  Padding(
        padding: const EdgeInsets.all(25),
        child: ListView.separated(
          itemBuilder : (context, index){
            final data = studentList[index];
            return ListTile(
              title: Text(data.name),
              subtitle: Text(data.age),
            );
          },
          itemCount: studentList.length,
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      );
      },
      valueListenable: studentListNotifyer,
      
    );
  }
}