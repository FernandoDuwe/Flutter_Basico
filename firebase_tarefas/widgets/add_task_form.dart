import 'package:firebase_tarefas/models/task_model.dart';
import 'package:firebase_tarefas/repositories/task_repository.dart';
import 'package:flutter/material.dart';

class AddTaskForm extends StatefulWidget {
  const AddTaskForm({super.key});

  @override
  State<AddTaskForm> createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      padding: EdgeInsets.all(10),
      child: TextField(
            controller: taskController,
            decoration: InputDecoration(
              labelText: "Digite o nome da tarefa",
              border: InputBorder.none,
              suffix: IconButton(onPressed: () {
                TaskRepository.addTask(TaskModel.undoneTask(taskController.text));

                Navigator.of(context).pop();
              }, icon: Icon(Icons.send, color: Colors.green,))
            ),
          )
    );
  }
}
