import 'package:flutter/material.dart';
import 'package:expensetracker/models/expense.dart';
class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});
final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(child:Text(expense.title),);
  }
}
