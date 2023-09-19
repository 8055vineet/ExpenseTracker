import 'package:flutter/material.dart';

import 'package:expensetracker/models/expense.dart';
import 'package:expensetracker/widgets/expenses_list/expenses_item.dart';
class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(context) {
    return ListView.builder(
        itemCount: expenses.length, itemBuilder: (ctx, idx) {
          return ExpenseItem(expense: expenses[idx]);
    });
  }
}
