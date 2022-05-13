import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/piechart_provider.dart';

PopUpCard(
  BuildContext context,
  bool isDelete,
  TextEditingController expenseNameController,
  TextEditingController expensePercentController,
) {
  expenseNameController.text = '';
  expensePercentController.text = '0';
  return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        double availablePercent =
            context.watch<HowToSpend>().availablePercentage;
        return AlertDialog(
            backgroundColor: const Color(0xff151923),
            content: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.9,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Available Percentage : $availablePercent",
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "What is the Expense..?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        controller: expenseNameController,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: "Food..?",
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            labelStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            fillColor: const Color.fromARGB(255, 47, 58, 86),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "How much Percentage..?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        controller: expensePercentController,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: "30%",
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            labelStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            fillColor: const Color.fromARGB(255, 47, 58, 86),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        availablePercent -=
                            double.parse(expensePercentController.text);
                        print(expensePercentController.text);

                        if (expenseNameController.text == "" ||
                            expensePercentController.text == "0") {
                          print("The value is nothing");
                          SnackBar snackBar = const SnackBar(
                              content: Text(
                            "Please Add the Expense And Percentage.!.",
                            style: TextStyle(color: Colors.red),
                          ));

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          if (availablePercent >= 0) {
                            context.read<HowToSpend>().decreasePercentage(
                                  double.parse(expensePercentController.text),
                                );

                            context.read<HowToSpend>().addToItems(
                                  expenseNameController.text,
                                  double.parse(expensePercentController.text),
                                );

                            Navigator.pop(context);
                          } else {
                            SnackBar snackBar = const SnackBar(
                                content: Text(
                              "Percentage OverFlowed.!.",
                              style: TextStyle(color: Colors.red),
                            ));

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            Navigator.pop(context);
                          }
                        }
                      },
                      child: const Text(
                        "Set",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 6,
                    // ),
                    Visibility(
                      visible: isDelete,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                        ),
                        onPressed: () => print("Tapped on Delete"),
                        child: const Text(
                          "Delete",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
      });
}
