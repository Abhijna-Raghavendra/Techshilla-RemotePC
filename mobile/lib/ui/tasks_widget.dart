import 'package:flutter/material.dart';
import 'package:mobile/utils/ssh_connect.dart';
import 'package:mobile/utils/firebase_database.dart';
import 'dart:convert';

class TasksWidget extends StatefulWidget {
  const TasksWidget({super.key});

  @override
  State<TasksWidget> createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<TasksWidget> {
  List _taskList = [];
  Future getTaskList() async {
    Object data = await getUserData();
    var parsedData = json.decode(json.encode(data));
    final client = await connect(
        parsedData['IPv4'], parsedData['user_name'], parsedData['pswd']);
    List deviceTaskList = await tasklist(client);
    setState(() {
      _taskList = deviceTaskList;
    });
  }

  @override
  void initState() {
    getTaskList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: (_taskList.length ~/ 10) - 2,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              _taskList[index * 10 + 1].toString(),
              style: const TextStyle(color: Color(0xffffffff)),
            ),
            subtitle: Text(
              _taskList[index * 10 + 9].toString(),
              style: const TextStyle(color: Color(0xffffffff)),
            ),
          );
        },
      ),
    );
  }
}
