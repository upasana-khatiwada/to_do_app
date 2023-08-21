import 'package:flutter/material.dart';
import 'package:to_do_app/add_task.dart';
import 'package:to_do_app/task_list.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/task_data.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC6DAFC),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 13),
        child: FloatingActionButton(
            backgroundColor: const Color(0xFFC6DAFC),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const AddTaskScreen(
                        // (newTaskTitle) {
                        //   setState(() {
                        //     tasks.add(Task(name: newTaskTitle));
                        //   });
                        //   Navigator.pop(context);
                        // },
                        ),
                  ),
                ),
              );
            }),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'My tasks',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.grey.shade50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    )),
                child: const TaskList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
