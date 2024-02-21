import '../../Utilites/colors.dart';

import 'package:flutter/material.dart';

class Calculator2 extends StatefulWidget {
  @override
  _Calculator2State createState() => _Calculator2State();
}

class _Calculator2State extends State<Calculator2> {
  double totalBudget = 0;
  int numberOfGuests = 0;
  double foodPercentage = 0;
  double decorationsPercentage = 0;
  double entertainmentPercentage = 0;
  double foodExpenses = 0;
  double decorationsExpenses = 0;
  double entertainmentExpenses = 0;
  double totalExpenses = 0;

  void calculateExpenses() {
    setState(() {
      foodExpenses = (totalBudget * foodPercentage) / 100;
      decorationsExpenses = (totalBudget * decorationsPercentage) / 100;
      entertainmentExpenses = (totalBudget * entertainmentPercentage) / 100;
      totalExpenses =
          foodExpenses + decorationsExpenses + entertainmentExpenses;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Total Budget'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  totalBudget = double.parse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Number of Guests'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  numberOfGuests = int.parse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Food Percentage'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  foodPercentage = double.parse(value);
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Decorations Percentage'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  decorationsPercentage = double.parse(value);
                });
              },
            ),
            TextField(
              decoration:
                  InputDecoration(labelText: 'Entertainment Percentage'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  entertainmentPercentage = double.parse(value);
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateExpenses,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text('Food Expenses: $foodExpenses'),
            Text('Decorations Expenses: $decorationsExpenses'),
            Text('Entertainment Expenses: $entertainmentExpenses'),
            Text('Total Expenses: $totalExpenses'),
          ],
        ),
      ),
    );
  }
}
