import 'package:retplan/models/wallet.dart';

class User {
  User({
    required this.id,
    required this.username,
    required this.name,
    required this.email,
    required this.income,
    required this.passcode,
    required this.wallets,
  }); //
  String username;
  String id;
  String name;
  double income;
  String passcode;
  String email;
  List<Wallet> wallets;
}
