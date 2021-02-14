import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            color: Colors.black,
            decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
            fontSize: 22,
          ),
        ),
        controlAffinity: ListTileControlAffinity.trailing,
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
    );
  }
}