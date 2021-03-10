import 'package:flutter/cupertino.dart';
import 'package:todo_list/model/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _Todos = [];

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

  void updateTodo(Todo todo, String title, String description) {
    todo.title = title;
    todo.description = description;

    notifyListeners();
  }
}
