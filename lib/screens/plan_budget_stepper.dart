import 'package:fineta/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/piechart_provider.dart';
import '../widgets/stepper_widgets/expense_stepper.dart';
import '../widgets/stepper_widgets/income_stepper.dart';

class PlanYourBudgetScreen extends StatefulWidget {
  const PlanYourBudgetScreen({Key? key}) : super(key: key);

  @override
  State<PlanYourBudgetScreen> createState() => _PlanYourBudgetScreenState();
}

class _PlanYourBudgetScreenState extends State<PlanYourBudgetScreen> {
  int currentStep = 0;
  late TextEditingController incomeController;
  late TextEditingController rentController;
  late TextEditingController emiController;
  late TextEditingController othersController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    incomeController = TextEditingController();
    rentController = TextEditingController();
    emiController = TextEditingController();
    othersController = TextEditingController();

    rentController.text = "0";
    emiController.text = "0";
    othersController.text = "0";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff080C15),
        body: Theme(
          data: ThemeData(
            primarySwatch: Colors.orange,
            backgroundColor: const Color(0xff080C15),
            canvasColor: const Color(0xff080C15),
            colorScheme: const ColorScheme.light(primary: Color(0xff5C7AE5)),
            unselectedWidgetColor: Colors.grey,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Stepper(
                type: StepperType.horizontal,
                physics: const BouncingScrollPhysics(),
                steps: getSteps(),
                currentStep: currentStep,
                // onStepTapped: (step) => setState(() {
                //       currentStep = step;
                //     }),
                onStepContinue: () {
                  if (currentStep == 0 && incomeController.text != '') {
                    context.read<HowToSpend>().setRecurringAmounts(
                          double.parse(incomeController.text),
                          double.parse(rentController.text),
                          double.parse(emiController.text),
                          double.parse(othersController.text),
                        );
                  } else if (currentStep == 1) {
                    context.read<HowToSpend>().addFinalSavings();
                    print("${context.read<HowToSpend>().savings}");
                  } else if (currentStep == 2) {
                    context.read<HowToSpend>().addPieChartData();
                    // context.read<HowToSpend>().clearDummyData();

                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(title: "Fineta"),
                        ));
                  }
                  setState(() {
                    if (currentStep == getSteps().length - 1) {
                      print("Completed");
                    } else {
                      currentStep++;
                    }
                  });
                },
                onStepCancel: () {
                  if (currentStep == 0) {
                    null;
                  } else {
                    setState(() {
                      currentStep--;
                    });
                  }
                },
                controlsBuilder: (context, details) {
                  return Row(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: details.onStepContinue,
                        child: const Text(
                          'Continue',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      TextButton(
                        onPressed: details.onStepCancel,
                        child: const Text(
                          'Back',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
          isActive: currentStep >= 0,
          title: const Text(
            "Income",
            style: TextStyle(color: Colors.white),
          ),
          content: IncomeStepperContent(
              context: context,
              incomeController: incomeController,
              rentController: rentController,
              emiController: emiController,
              othersController: othersController),
        ),
        Step(
          isActive: currentStep >= 1,
          title: const Text(
            "Expenses",
            style: TextStyle(color: Colors.white),
          ),
          content: ExpenseStepperContent(
            context: context,
          ),
        ),
        Step(
          isActive: currentStep >= 2,
          title: const Text(
            "Details",
            style: TextStyle(color: Colors.white),
          ),
          content: SizedBox(
            height: MediaQuery.of(context).size.height * 0.66,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(children: [
                const Text(
                  "What would you like to call this Budget..?",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      hintText: "Budget1?",
                      hintStyle: const TextStyle(color: Colors.white),
                      fillColor: const Color.fromARGB(255, 96, 96, 186),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(color: Colors.white),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    DetailedIncomeExpense(
                      color: Colors.green,
                      text: "Income",
                      amount1: 0,
                      amount:
                          "Rs ${context.read<HowToSpend>().income.toString()}",
                    ),
                    DetailedIncomeExpense(
                        color: Colors.red,
                        text: "Rent",
                        amount1: 0,
                        amount:
                            "Rs ${context.read<HowToSpend>().rent.toString()}"),
                    DetailedIncomeExpense(
                      color: Colors.red,
                      text: "EMI",
                      amount1: 0,
                      amount: "Rs ${context.read<HowToSpend>().emi.toString()}",
                    ),
                    DetailedIncomeExpense(
                      color: Colors.red,
                      text: "Others",
                      amount1: 0,
                      amount:
                          "Rs ${context.read<HowToSpend>().otherRecurring.toString()}",
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    const Text(
                      "You can Spend this much Monthly On :",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ListView.builder(
                          itemCount:
                              context.read<HowToSpend>().itemPercent.length,
                          itemBuilder: ((context, index) {
                            String itemName =
                                context.read<HowToSpend>().itemName[index];
                            double itemAmount =
                                context.read<HowToSpend>().itemPercent[index];

                            return DetailedIncomeExpense(
                              color: Colors.red,
                              amount1: itemAmount,
                              amount: "",
                              text: itemName,
                            );
                          }),
                        ))
                  ],
                )
              ]),
            ),
          ),
        )
      ];
}

class DetailedIncomeExpense extends StatelessWidget {
  const DetailedIncomeExpense({
    Key? key,
    required this.text,
    required this.color,
    required this.amount,
    required this.amount1,
  }) : super(key: key);

  final String text;
  final Color color;
  final String amount;
  final double amount1;

  @override
  Widget build(BuildContext context) {
    var amountToDisplay =
        (amount1 * (context.watch<HowToSpend>().availableMoney)) / 100;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "$text :",
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        Text(
          amount == '' ? "Rs ${amountToDisplay.toString()}" : amount,
          style: TextStyle(color: color, fontSize: 16),
        ),
      ],
    );
  }
}
