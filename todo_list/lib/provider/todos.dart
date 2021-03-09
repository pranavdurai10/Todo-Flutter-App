import 'package:flutter/cupertino.dart';
import 'package:todo_list/model/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _Todos = [
    Todo(
      createdTime: DateTime.now(),
      title: 'Wash the clothes',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Finish some code',
    ),
    Todo(createdTime: DateTime.now(), title: 'Groceries', description: '''- Eggs
- Milk 
- Washing Soap'''),
  ];

  List<Todo> get todos => _Todos.where((todo) => todo.isDone == false).toList();

  List<Todo> get todosCompleted =>
      _Todos.where((todo) => todo.isDone == true).toList();

  void addTodo(Todo todo) {
    _Todos.add(todo);

    notifyListeners();
  }

  void removeTodo(Todo todo) {
    _Todos.remove(todo);

    notifyListeners();
  }

  bool toggleTodoStatus(Todo todo) {
    todo.isDone = !todo.isDone;

    notifyListeners();

    return todo.isDone;
  }
}
