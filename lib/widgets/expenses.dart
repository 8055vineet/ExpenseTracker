import 'package:expensetracker/models/expense.dart';
import 'package:expensetracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expensetracker/widgets/expenses_list/expenses_list.dart';
import 'package:expensetracker/widgets/new_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "clothes",
        amount: 1500,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: "cricket",
        amount: 2300,
        date: DateTime.now(),
        category: Category.leisure),
  ];
  void _addExpense(Expense expense){
    setState(() {
      _registeredExpenses.add(expense);
    });}

void _openAddExpenseOverLay(){
  showModalBottomSheet( backgroundColor: Colors.white10 ,context: context, builder: (ctx){
    return NewExpense(onAddExpense: _addExpense);
    });}


  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Expense Tracker'),

        actions: [
          IconButton(
            onPressed:_openAddExpenseOverLay,
            icon: const Icon(Icons.add),
          ),
        ],
    ),
        body: Column(
          children: [
            const Text("The chart"),
            Expanded(child: ExpensesList(expenses: _registeredExpenses)),
          ],
        ));
  }
}
