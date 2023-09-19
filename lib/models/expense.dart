import 'package:uuid/uuid.dart';
class expense{
  expense(this.id, {required this.title,required this.amount,required this.date}){}
  final int id;
  final String title;
  final double amount;
  final DateTime date;

}