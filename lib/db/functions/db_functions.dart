import 'package:flutter/material.dart';
import 'package:sample_app/db/model/data_model.dart';

ValueNotifier<List <StudentModel>> studentListNotifyer = ValueNotifier([]);

void addStudent(StudentModel value){
  studentListNotifyer.value.add(value);
  // print(value.toString());
  studentListNotifyer.notifyListeners();
}
