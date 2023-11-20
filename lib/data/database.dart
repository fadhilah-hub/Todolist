import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  //referensi box
  final _myBox = Hive.box('mybox');

  //default for the first time
  void createInitialData () {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }
  //load data dari database
  void loadData () {
  toDoList = _myBox.get("TODOLIST");

  }

  //update data
  void updateDatabase (){
    _myBox.put("TODOLIST", toDoList);

  }
}