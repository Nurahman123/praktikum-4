import 'package:restsimple/models/todo.dart';
import 'package:restsimple/repository/repository.dart';

class TodoController {
  final Repository _repository;

  TodoController(this._repository);

  Future<List<Todo>> fetchTodolist() async {
    return _repository.getTodoList();
  }

  Future<String> updatePatchCompleted(Todo todo) async {
    return _repository.patchCompleted(todo);
  }

  Future<String> updatePutCompleted(Todo todo) async {
    return _repository.putCompleted(todo);
  }

  Future<String> deleteTodo(Todo todo) async {
    return _repository.deleteCompleted(todo);
  }

  Future<String> posTodo(Todo todo) async {
    return _repository.postCompleted(todo);
  }
}
