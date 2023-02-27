import 'package:budget_sample_ui/data/data.dart';
import 'package:budget_sample_ui/models/category_model.dart';
import 'package:flutter/material.dart';

import '../widgets/weekly_spending.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildCategory(Category category, double totalAmountSpent) {
    String spend = (category.maxAmount - totalAmountSpent).toStringAsFixed(2);
    String maxAmount = category.maxAmount.toStringAsFixed(2);
    return Container(
      height: 100.0,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 6.0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                category.name,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              Text(
                '\$$spend / \$$maxAmount',
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: LinearProgressIndicator(
              valueColor: _getColor(
                  (category.maxAmount - totalAmountSpent), category.maxAmount),
              backgroundColor: Colors.grey.shade300,
              minHeight: 20,
              value:
                  (category.maxAmount - totalAmountSpent) / category.maxAmount,
            ),
          )
        ],
      ),
    );
  }

  AlwaysStoppedAnimation<Color?> _getColor(double spend, double maxAmount) {
    if (spend < (maxAmount / 3)) {
      return const AlwaysStoppedAnimation(Colors.red);
    } else if (spend < (maxAmount / 2)) {
      return const AlwaysStoppedAnimation(Colors.orange);
    } else {
      return const AlwaysStoppedAnimation(Colors.green);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 100.0,
            leading: IconButton(
              icon: const Icon(Icons.menu_rounded),
              iconSize: 30.0,
              onPressed: () {},
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
                iconSize: 30.0,
              )
            ],
            flexibleSpace: const FlexibleSpaceBar(
              title: Text("Budget App Ui"),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1 + categories.length,
              (context, index) {
                if (index == 0) {
                  return Container(
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: WeeklySpending(weeklySpending),
                  );
                } else {
                  final Category category = categories[index - 1];
                  double totalAmountSpent = 0;
                  for (var expense in category.expenses) {
                    totalAmountSpent += expense.cost;
                  }
                  return _buildCategory(category, totalAmountSpent);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
