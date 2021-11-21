import 'package:blocmangement/shared/component.dart';
import 'package:blocmangement/shared/constant.dart';
import 'package:flutter/material.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return formTasks(
            title: tasks[index]['title'],
            date: tasks[index]['date'],
            time: tasks[index]['time'],
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.black45,
            height: 2,
          );
        },
        itemCount: tasks.length);
  }
}
