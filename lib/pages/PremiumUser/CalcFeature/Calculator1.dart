import 'package:flutter/material.dart';
import 'package:retplan/pages/Utilites/colors.dart';
import 'package:flutter/material.dart';

class SalaryCalculator extends StatefulWidget {
  const SalaryCalculator({Key? key}) : super(key: key);

  @override
  _SalaryCalculatorState createState() => _SalaryCalculatorState();
}

class _SalaryCalculatorState extends State<SalaryCalculator> {
  TextEditingController _salaryController = TextEditingController();
  TextEditingController _rentController = TextEditingController();
  TextEditingController _utilitiesController = TextEditingController();
  TextEditingController _groceriesController = TextEditingController();
  TextEditingController _transportationController = TextEditingController();

  double _totalExpenses = 0;
  double _remainingAmount = 0;

  void _calculateExpenses() {
    double salary = double.tryParse(_salaryController.text) ?? 0;
    double rent = double.tryParse(_rentController.text) ?? 0;
    double utilities = double.tryParse(_utilitiesController.text) ?? 0;
    double groceries = double.tryParse(_groceriesController.text) ?? 0;
    double transportation =
        double.tryParse(_transportationController.text) ?? 0;

    _totalExpenses = rent + utilities + groceries + transportation;
    _remainingAmount = salary - _totalExpenses;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsDesign.mainColor,
        title: Text('Expenses Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _salaryController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Salary',
              ),
            ),
            TextField(
              controller: _rentController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Rent',
              ),
            ),
            TextField(
              controller: _utilitiesController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Utilities',
              ),
            ),
            TextField(
              controller: _groceriesController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Groceries',
              ),
            ),
            TextField(
              controller: _transportationController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Transportation',
              ),
            ),
            ElevatedButton(
              onPressed: _calculateExpenses,
              child: Text('Calculate'),
            ),
            SizedBox(height: 16),
            Text('Total Expenses: $_totalExpenses'),
            Text('Remaining Amount: $_remainingAmount'),
          ],
        ),
      ),
    );
  }
}
