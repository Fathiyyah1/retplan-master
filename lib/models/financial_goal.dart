class FinancialGoal {
  FinancialGoal({
    required this.id,
    required this.startingDate,
    required this.acheiveDate,
    required this.name,
    this.description = "",
  });
  String id;
  DateTime startingDate;
  DateTime acheiveDate;
  String name;
  String description;
}
