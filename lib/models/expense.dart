import 'package:retplan/models/expense_category.dart';

class Expense {
  Expense({
    required this.id,
    required this.date,
    required this.amount,
    required this.category,
    required this.name,
  });
  String id;
  double amount;
  ExpenseCategory category;
  String name;
  DateTime date;
}
