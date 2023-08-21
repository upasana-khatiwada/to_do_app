import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  

  final bool isChecked;
  final String taskTitle;
  final VoidCallback longPressCallback;
  final Function(bool?) checkboxCallback;

 const TaskTile(
      {super.key, 
       required this.isChecked,
       required this.taskTitle,
       required this.checkboxCallback,
       required this.longPressCallback});

       
      
// TaskTile({super.key, required this.isChecked, required this.taskTitle});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent[100],
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
 