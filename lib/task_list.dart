import 'package:flutter/material.dart';
import 'package:to_do_app/task.dart';
import 'package:to_do_app/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({required this.tasks, super.key});

  final List<Task> tasks; 

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone, 
        checkboxCallback: (checkboxState){
          setState(() {
              widget.tasks[index].toggleDone();
            });
        }
      );
    },
    itemCount: widget.tasks.length,
    );
    
    
                  
  }
}