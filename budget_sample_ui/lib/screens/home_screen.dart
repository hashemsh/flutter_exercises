import 'package:budget_sample_ui/data/data.dart';
import 'package:flutter/material.dart';

import '../widgets/weekly_spending.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
            childCount: 1,
            (context, index) {
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
            },
          ))
        ],
      ),
    );
  }
}
