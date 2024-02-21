import 'package:flutter/material.dart';
import 'package:retplan/pages/Utilites/colors.dart';

import '../../models/wallet.dart';

class AddExpensePage extends StatefulWidget {
  @override
  _AddExpensePageState createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {
  String name = '';
  String category = '';
  double amount = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsDesign.mainColor,
        title: Text("Expenses"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Category'),
              onChanged: (value) {
                setState(() {
                  category = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              onChanged: (value) {
                setState(() {
                  amount = double.tryParse(value) ?? 0.0;
                });
              },
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: ColorsDesign.mainColor, // Set the desired color
                // Add more styles as needed
              ),
              onPressed: () {
                Expense expense =
                    Expense(name: name, category: category, amount: amount);
                Navigator.of(context)
                    .pop(expense); // Pop with the expense object
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}

class Expense {
  final String name;
  final String category;
  final double amount;

  Expense({required this.name, required this.category, required this.amount});
}
