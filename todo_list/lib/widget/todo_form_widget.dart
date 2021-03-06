import 'package:flutter/material.dart';

class TodoFormWidget extends StatelessWidget {
  final String title;
  final String description;
  final ValueChanged<String> onChangesTitle;
  final ValueChanged<String> onChangesDescription;
  final VoidCallback onSavedTodo;

  const TodoFormWidget({
    Key key,
    this.title = '',
    this.description = '',
    @required this.onChangesTitle,
    @required this.onChangesDescription,
    @required this.onSavedTodo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildTitle(),
        ],
      ));

  Widget buildTitle() => TextFormField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Title',
        ),
      );
}
