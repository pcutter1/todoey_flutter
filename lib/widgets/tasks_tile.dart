import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(
          'Do the list',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
        controlAffinity: ListTileControlAffinity.trailing,
        value: false,
        onChanged: null);
  }
}