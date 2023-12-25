import 'package:flutter/material.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('할 일 관리'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  todos.removeAt(index);
                });
              },
            ),
            onTap: () {
              // 할 일 수정 화면으로 이동
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TodoEditScreen(
                    todo: todos[index],
                    onUpdate: (updatedTodo) {
                      setState(() {
                        todos[index] = updatedTodo;
                      });
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // 할 일 추가 화면으로 이동
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TodoAddScreen(
                onAdd: (newTodo) {
                  setState(() {
                    todos.add(newTodo);
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class TodoAddScreen extends StatelessWidget {
  final Function(String) onAdd;
  final TextEditingController _textEditingController = TextEditingController();

  TodoAddScreen({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('할 일 추가'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                labelText: '할 일',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String newTodo = _textEditingController.text;
                onAdd(newTodo);
                Navigator.pop(context);
              },
              child: const Text('추가'),
            ),
          ],
        ),
      ),
    );
  }
}

class TodoEditScreen extends StatefulWidget {
  final String todo;
  final Function(String) onUpdate;

  const TodoEditScreen({super.key, required this.todo, required this.onUpdate});

  @override
  _TodoEditScreenState createState() => _TodoEditScreenState();
}

class _TodoEditScreenState extends State<TodoEditScreen> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController(text: widget.todo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('할 일 수정'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                labelText: '할 일',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String updatedTodo = _textEditingController.text;
                widget.onUpdate(updatedTodo);
                Navigator.pop(context);
              },
              child: const Text('수정'),
            ),
          ],
        ),
      ),
    );
  }
}