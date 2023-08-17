import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  

  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;

 const TaskTile(
      {super.key, 
       required this.isChecked,
       required this.taskTitle,
       required this.checkboxCallback});

       
      
// TaskTile({super.key, required this.isChecked, required this.taskTitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent[100],
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
 