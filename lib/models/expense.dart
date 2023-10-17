import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
const uuid=Uuid();
enum Category {travel,food,work,leisure}
 final Formatter=DateFormat.yMd();
const categoryIcons={
  Category.travel:Icons.flight_takeoff,
  Category.food:Icons.lunch_dining_rounded,
  Category.work:Icons.work,
  Category.leisure:Icons.movie,
};
class Expense{
  Expense({required this.title,required this.amount,required this.date,required this.category}):id=uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

 String get formattedDate{
   return Formatter.format(date);
 }

}
class ExpenseBucket{
  const ExpenseBucket({
    required this.category,
    required this.expenses
});

ExpenseBucket.forCategory(List<Expense>allExpenses,this.category)
    :expenses=allExpenses.where((expense) => expense.category==category).toList();

  final Category category;
  final List<Expense> expenses;

 double get totalExpense{
   double sum=0;
   for (Expense expense in expenses)
     {
      sum+=expense.amount;
     }
   return sum;
 }

}