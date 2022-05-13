import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/piechart_provider.dart';

popUpCardWithDelete(
    BuildContext context, String exName, double exPercent, int index) {
  TextEditingController expenseName = TextEditingController();
  TextEditingController expensePercent = TextEditingController();

  expenseName.text = exName;
  expensePercent.text = exPercent.toString();
  return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
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
                      "Available Percentage : ${context.watch<HowToSpend>().availablePercentage}",
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
                        controller: expenseName,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: "Food?",
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
                        controller: expensePercent,
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
                        context.read<HowToSpend>().updateItems(
                              expenseName.text,
                              double.parse(expensePercent.text),
                              index,
                              exPercent,
                            );

                        context.read<HowToSpend>().decreasePercentage(
                              double.parse(expensePercent.text),
                            );
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Update",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 6,
                    // ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      onPressed: () {
                        context.read<HowToSpend>().deleteItems(index);
                        context.read<HowToSpend>().increasePercentage(
                              exPercent,
                            );

                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Delete",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ));
      });
}
