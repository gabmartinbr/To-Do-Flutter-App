import 'package:flutter/material.dart';
import 'package:to_do_app/utils/todo_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List toDoList = [
    ['Learn flutter development', false],
    ['Estudiar edc', false],
    ['Estudiar cya', false],
  ];

  void checkBoxChanged(index) {
    toDoList[index][1] = !toDoList[index][1];
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.deepPurple.shade300,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Simple To-Do',
            ),
          ),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),

        body: ListView.builder(
          itemCount: toDoList.length, 
          itemBuilder: (BuildContext context, index) {
            return TodoList(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value) => checkBoxChanged(index),
            );
          },
      ));
  }
}