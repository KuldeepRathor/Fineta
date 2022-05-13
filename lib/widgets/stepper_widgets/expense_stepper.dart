import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/piechart_provider.dart';
import '../expense_card.dart';
import '../pop_up.dart';

class ExpenseStepperContent extends StatefulWidget {
  const ExpenseStepperContent({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  State<ExpenseStepperContent> createState() => _ExpenseStepperContentState();
}

class _ExpenseStepperContentState extends State<ExpenseStepperContent> {
  late TextEditingController expenseNameController;
  late TextEditingController expensePercentController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    expenseNameController = TextEditingController();
    expensePercentController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    expenseNameController.dispose();
    expensePercentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.66,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Text(
              "Available Percentage : ${context.watch<HowToSpend>().availablePercentage.toString()}%",
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "How much % you would like to Spend..?",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              height: 24,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () => PopUpCard(context, false, expenseNameController,
                  expensePercentController),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 60,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: context.watch<HowToSpend>().itemName.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpensePercentCard(
                      context: context,
                      index: index,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
