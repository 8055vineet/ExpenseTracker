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
        title: "Clothes",
        amount: 1500,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: "Cricket",
        amount: 2300,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    int index = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Expense Deleted"),
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          label: "undo",
          onPressed: (){
            setState(
                  () {
                _registeredExpenses.insert(index, expense);
              },
            );
          }
        ),
      ),
    );
  }

  void _openAddExpenseOverLay() {
    showModalBottomSheet(
        backgroundColor: Color.fromARGB(255, 4, 4, 4),
        context: context,
        builder: (ctx) {
          return NewExpense(onAddExpense: _addExpense);
        });
  }

  @override
  Widget build(context) {
    Widget maincontent = const Center(
      child: Text("No data found"),
    );
    if (_registeredExpenses.isNotEmpty) {
      maincontent = ExpensesList(
        expenses: _registeredExpenses,
        onRemoveExpense: _removeExpense,
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Expense Tracker'),
          actions: [
            IconButton(
              onPressed: _openAddExpenseOverLay,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: Column(
          children: [
            const Text("The chart"),
            Expanded(child: maincontent),
          ],
        ));
  }
}
