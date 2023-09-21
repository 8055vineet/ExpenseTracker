import 'package:flutter/material.dart';

import 'package:expensetracker/models/expense.dart';
import 'package:expensetracker/widgets/expenses_list/expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses,required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function (Expense expense) onRemoveExpense;
  @override
  Widget build(context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, idx) {
          return Dismissible(
              key: ValueKey(expenses[idx]),
              onDismissed: (direction){
                onRemoveExpense(expenses[idx]);
              },
              child: ExpenseItem(expense: expenses[idx]));
        });
  }
}
