import 'package:hive/hive.dart';

class ToDoDatabase{

  List toDoList=[];

  final _myBox=Hive.box('mybox');

  void createInitialData() {
    toDoList=[
      ["Add your first task", false],
    ];
  }
  void loadData(){
    toDoList=_myBox.get("TODOLIST");
  }
  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);
  }
}