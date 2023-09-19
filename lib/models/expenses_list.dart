import 'package:flutter/material.dart';
import 'package:expensetracker/expenses.dart';
import 'package:expensetracker/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<expense> expenses;

  @override
  Widget build(context) {
    return ListView.builder(
        itemCount: expenses.length, itemBuilder: (ctx, idx) {
          return Text(expenses[idx].title);
    });
  }
}
