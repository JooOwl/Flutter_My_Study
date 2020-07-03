import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class TodosScreen extends StatelessWidget {

  List<Todo> lst_todos;

  void MakeList()
  {
    lst_todos = List.generate(20, (i) => Todo( 'Todo $i', 'A description of what needs to be done for Todo $i', ) );
  }

  @override
  Widget build(BuildContext context) {

    MakeList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: lst_todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lst_todos[index].title),
            // 사용자가 ListTile을 선택하면, DetailScreen으로 이동합니다.
            // DetailScreen을 생성할 뿐만 아니라, 현재 todo를 같이 전달해야
            // 한다는 것을 명심하세요.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo_item_detail: lst_todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  // Todo를 들고 있을 필드를 선언합니다.
  final Todo todo_item_detail;

  // 생성자는 Todo를 인자로 받습니다.
  DetailScreen({Key key, @required this.todo_item_detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // UI를 그리기 위해 Todo를 사용합니다.
    return Scaffold(
      appBar: AppBar(
        title: Text(todo_item_detail.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo_item_detail.description),
      ),
    );
  }
}