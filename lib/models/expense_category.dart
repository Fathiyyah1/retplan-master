import 'package:flutter/material.dart';

class ExpenseCategory {
  ExpenseCategory({
    required this.id,
    this.icon,
    required this.name,
  });
  String id;
  Icon? icon;
  String name;
}
