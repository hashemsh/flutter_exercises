import 'package:budget_sample_ui/models/expense_model.dart';

class Category {
  final String name;
  final double maxAmount;
  final List<Expense> expenses;

  Category(this.name, this.maxAmount, this.expenses);
}
