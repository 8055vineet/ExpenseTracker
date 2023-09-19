import 'package:expensetracker/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:expensetracker/widgets/expenses_list/expenses_list.dart';
class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final  List<expense>_registeredExpenses=[
    expense(title: "clothes", amount: 1500, date: DateTime.now(), category:Category.work),
    expense(title: "cricket", amount: 2300, date: DateTime.now(), category:Category.leisure),
  ];


  @override
  Widget build( context) {
    return  Scaffold(body:
    Column(
      children: [
        const Text("The chart"),
        Expanded(child: ExpensesList(expenses: _registeredExpenses)),
      ],
    ));
  }
}

