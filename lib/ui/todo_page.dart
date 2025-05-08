import 'package:session6_bloc_consept_todo/ui/todo_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session6_bloc_consept_todo/blocs/todo_bloc.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<FormState>();
    final _controller = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(children: [Text('Todo List'), Row(children: [
                  
                ],
              )]),
        ),
      ),
    );
  }
}
