import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});


  @override
  State<NewExpense> createState() => _NewExpenseState();
}


class _NewExpenseState extends State<NewExpense> {
  var _enteredTitle = '';

  void _saveTitleInput(String input) {
    _enteredTitle = input;
  }

  @override
  Widget build(context) {
    return  Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(onChanged: _saveTitleInput,
            maxLength: 50,
            decoration: const InputDecoration(
                label: Text(
                  "Title",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ),
          Row(children: [
            ElevatedButton(onPressed: () {
              print(_enteredTitle);

            }, child: const Text('save expense'))
          ],),
        ],
      ),
    );
  }
}
