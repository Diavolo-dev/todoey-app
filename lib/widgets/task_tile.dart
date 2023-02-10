import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  const TaskTile({
    Key? key,
    required this.isChecked, required this.taskTitle, required this.checkboxCallback, required this.longPressCallback
  }) : super(key: key);


  final bool isChecked;
  final String taskTitle;
  final dynamic checkboxCallback;
  final dynamic longPressCallback;

  // TaskTile(
  //     {this.isChecked,
  //       this.taskTitle,
  //       this.checkboxCallback,
  //       this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}