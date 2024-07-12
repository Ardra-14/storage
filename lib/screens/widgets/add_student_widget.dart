import 'package:flutter/material.dart';
import 'package:sample_app/db/functions/db_functions.dart';
import 'package:sample_app/db/model/data_model.dart';

class AddStudentWidget extends StatelessWidget {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  AddStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your Name",
            ),
          ),
          SizedBox(height: 20,),
            TextFormField(
            controller: _ageController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your Age",
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton.icon(onPressed: (){
            addStudentButton();
          }, 
          icon: Icon(Icons.add),
          label: Text('Add Student'),
          )
        ],
      ),
    );
  }

  Future <void> addStudentButton() async{
    final _name = _nameController.text;
    final _age = _ageController.text;

    if(_name.isEmpty || _age.isEmpty){
      return;
    }
    else{
     // print('$_name \n $_age');

      final _student =  StudentModel(name: _name, age: _age);
      addStudent(_student);
    }
  }
}
