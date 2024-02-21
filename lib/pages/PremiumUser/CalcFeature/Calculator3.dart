import 'package:flutter/material.dart';

class Calculator3 extends StatefulWidget {
  @override
  _Calculator3State createState() => _Calculator3State();
}

class _Calculator3State extends State<Calculator3> {
  TextEditingController _retirementAgeController = TextEditingController();
  TextEditingController _lifeExpectancyController = TextEditingController();
  TextEditingController _currentSavingsController = TextEditingController();
  TextEditingController _annualIncomeController = TextEditingController();
  TextEditingController _expectedExpensesController = TextEditingController();
  TextEditingController _inflationRateController = TextEditingController();
  TextEditingController _returnRateController = TextEditingController();

  double _retirementDuration = 0.0;
  double _retirementSavingsGoal = 0.0;
  double _annualWithdrawalRate = 0.0;
  double _annualWithdrawalAmount = 0.0;
  double _adjustedAnnualExpenses = 0.0;
  double _shortfallSurplus = 0.0;

  @override
  void dispose() {
    _retirementAgeController.dispose();
    _lifeExpectancyController.dispose();
    _currentSavingsController.dispose();
    _annualIncomeController.dispose();
    _expectedExpensesController.dispose();
    _inflationRateController.dispose();
    _returnRateController.dispose();
    super.dispose();
  }

  void calculateRetirement() {
    int retirementAge = int.tryParse(_retirementAgeController.text) ?? 0;
    int lifeExpectancy = int.tryParse(_lifeExpectancyController.text) ?? 0;
    double currentSavings =
        double.tryParse(_currentSavingsController.text) ?? 0.0;
    double annualIncome = double.tryParse(_annualIncomeController.text) ?? 0.0;
    double expectedExpenses =
        double.tryParse(_expectedExpensesController.text) ?? 0.0;
    double inflationRate =
        double.tryParse(_inflationRateController.text) ?? 0.0;
    double returnRate = double.tryParse(_returnRateController.text) ?? 0.0;

    int retirementDuration = lifeExpectancy - retirementAge;
    double retirementSavingsGoal = expectedExpenses * retirementDuration;
    double annualWithdrawalRate = (expectedExpenses / currentSavings) * 100;
    double annualWithdrawalAmount =
        (currentSavings * (returnRate / 100)) + expectedExpenses;
    double adjustedAnnualExpenses =
        expectedExpenses * (1 + (inflationRate / 100));
    double shortfallSurplus = annualIncome - adjustedAnnualExpenses;

    setState(() {
      _retirementDuration = retirementDuration.toDouble();
      _retirementSavingsGoal = retirementSavingsGoal;
      _annualWithdrawalRate = annualWithdrawalRate;
      _annualWithdrawalAmount = annualWithdrawalAmount;
      _adjustedAnnualExpenses = adjustedAnnualExpenses;
      _shortfallSurplus = shortfallSurplus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retirement Spending Calculator'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _retirementAgeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Retirement Age'),
            ),
            TextField(
              controller: _lifeExpectancyController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Life Expectancy'),
            ),
            TextField(
              controller: _currentSavingsController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Current Savings'),
            ),
            TextField(
              controller: _annualIncomeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Annual Income'),
            ),
            TextField(
              controller: _expectedExpensesController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Expected Expenses'),
            ),
            TextField(
              controller: _inflationRateController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Inflation Rate'),
            ),
            TextField(
              controller: _returnRateController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Return Rate'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: calculateRetirement,
              child: Text('Calculate'),
            ),
            SizedBox(height: 16.0),
            Text('Retirement Duration: $_retirementDuration years'),
            Text('Retirement Savings Goal: \$$_retirementSavingsGoal'),
            Text('Annual Withdrawal Rate: $_annualWithdrawalRate%'),
            Text('Annual Withdrawal Amount: \$$_annualWithdrawalAmount'),
            Text('Adjusted Annual Expenses: \$$_adjustedAnnualExpenses'),
            Text('Shortfall/ Surplus: \$$_shortfallSurplus'),
          ],
        ),
      ),
    );
  }
}
