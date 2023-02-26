import 'dart:math';

import '../models/category_model.dart';
import '../models/expense_model.dart';

final rand = Random();

final List<double> weeklySpending = [
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
];

_generateExpenses() {
  List<Expense> expenses = [
    Expense('Item 0', rand.nextDouble() * 90),
    Expense('Item 1', rand.nextDouble() * 90),
    Expense('Item 2', rand.nextDouble() * 90),
    Expense('Item 3', rand.nextDouble() * 90),
    Expense('Item 4', rand.nextDouble() * 90),
    Expense('Item 5', rand.nextDouble() * 90),
  ];
  return expenses;
}

List<Category> categories = [
  Category('Food', 450, _generateExpenses()),
  Category('Clothing', 500, _generateExpenses()),
  Category('Utilities', 600, _generateExpenses()),
  Category('Entertainment', 330, _generateExpenses()),
  Category('Transportation', 500, _generateExpenses()),
  Category('Housing', 1000, _generateExpenses()),
];

final List<String> weekLetterName = ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'];
