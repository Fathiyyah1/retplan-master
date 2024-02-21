import 'package:flutter/material.dart';
import 'package:retplan/pages/PremiumUser/investPage.dart';

class Calculator4 extends StatefulWidget {
  @override
  _Calculator4State createState() => _Calculator4State();
}

class _Calculator4State extends State<Calculator4> {
  final TextEditingController _salaryController = TextEditingController();
  final TextEditingController _expensesController = TextEditingController();
  final TextEditingController _debtsController = TextEditingController();
  final TextEditingController _loansController = TextEditingController();

  double _availableFunds = 0.0;

  void calculateAvailableFunds() {
    double salary = double.tryParse(_salaryController.text) ?? 0.0;
    double expenses = double.tryParse(_expensesController.text) ?? 0.0;
    double debts = double.tryParse(_debtsController.text) ?? 0.0;
    double loans = double.tryParse(_loansController.text) ?? 0.0;

    double availableFunds = salary - expenses - debts - loans;
    setState(() {
      _availableFunds = availableFunds;
    });
  }

  @override
  Widget build(BuildContext context) {
    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Investment Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTextField(_salaryController, 'Salary'),
            _buildTextField(_expensesController, 'Expenses'),
            _buildTextField(_debtsController, 'Debts'),
            _buildTextField(_loansController, 'Loans'),
            ElevatedButton(
              onPressed: calculateAvailableFunds,
              child: Text('Calculate'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Available Funds for Investment:',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Text(
              '$_availableFunds',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: sizeH * 0.3,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Investment()));
              },
              child: Text('Calculate'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}
