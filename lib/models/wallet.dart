import 'package:retplan/models/expense.dart';

class Wallet {
  Wallet({
    required this.id,
    required this.name,
    required this.transactions,
    required this.balance,
  });
  String id;
  String name;
  double balance;
  List<Expense> transactions;
}
