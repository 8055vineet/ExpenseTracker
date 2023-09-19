import 'package:expensetracker/models/expense.dart';
import 'package:flutter/material.dart';
class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final  List<expense>_registedExpenses=[
    expense(title: "clothes", amount: 1500, date: DateTime.now(), category:Category.work),
    expense(title: "cricket", amount: 2300, date: DateTime.now(), category:Category.leisure),
  ];


  @override
  Widget build( context) {
    return const Scaffold(body:Column(
      children: [
        Text("The chart"),
        Text("ExpensesList"),
      ],
    ));
  }
}

