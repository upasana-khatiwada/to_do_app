import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/task_data.dart';
import 'package:to_do_app/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({ super.key});



  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return  ListView.builder(
        itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: taskData.tasks[index].name,
          isChecked: taskData.tasks[index].isDone, 
          checkboxCallback: (checkboxState){
            // setState(() {
            //     widget.tasks[index].toggleDone();
            //   });
          }
        );
      },
      itemCount: taskData.taskCount,
      );

      },
          );
    
    
                  
  }
}