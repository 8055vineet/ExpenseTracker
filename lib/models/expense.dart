import 'package:uuid/uuid.dart';
const uuid=Uuid();
enum Category {travel,food,work,leisure}
class expense{
  expense({required this.title,required this.amount,required this.date,required this.category}):id=uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}