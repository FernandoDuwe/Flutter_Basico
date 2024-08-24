import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_tarefas/models/task_model.dart';
import 'package:firebase_tarefas/repositories/task_repository.dart';
import 'package:firebase_tarefas/widgets/add_task_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestão de tarefas"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => AddTaskForm(),);
      },),
      body: FutureBuilder(future: TaskRepository.getTasks(), builder: (context, snapshot) {
        if (snapshot.hasError)
          return Center(
            child: Text(snapshot.error.toString(), style: TextStyle(color: Colors.red),)
          );

        if (!snapshot.hasData)
          return Center(
            child: CircularProgressIndicator(),
          );
        return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data![index].title),
                trailing: Checkbox(value: snapshot.data![index].done, onChanged: (value) async {
                  TaskModel task = snapshot.data![index];

                  task.done = value ?? false;

                  await TaskRepository.updateTask(task);

                  setState(() {

                  });
                },),
              );
            },);
      },),
    );
  }
}
