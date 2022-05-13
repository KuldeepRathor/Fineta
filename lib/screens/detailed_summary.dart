import 'package:fineta/screens/plan_budget_stepper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/piechart_provider.dart';

class DetailedSummaryScreen extends StatelessWidget {
  const DetailedSummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "You Can Spend This Much On:",
            style: TextStyle(
              // TODO Color White kar De
              color: Theme.of(context).primaryColor,
              fontSize: 24,
            ),
          ),
          const Divider(
            // TODO Color White kar De
            color: Colors.white,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView.builder(
              itemCount: context.read<HowToSpend>().itemPercent.length,
              itemBuilder: ((context, index) {
                String itemName = context.read<HowToSpend>().itemName[index];
                double itemAmount =
                    context.read<HowToSpend>().itemPercent[index];

                return DetailedIncomeExpense(
                  color: Colors.red,
                  amount1: itemAmount,
                  amount: "",
                  text: itemName,
                );
              }),
            ),
          ),
        ],
      ),
    ));
  }
}
