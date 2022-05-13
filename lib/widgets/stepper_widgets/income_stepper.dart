import 'package:flutter/material.dart';

import '../text_input.dart';

class IncomeStepperContent extends StatelessWidget {
  const IncomeStepperContent({
    Key? key,
    required this.context,
    required this.incomeController,
    required this.rentController,
    required this.emiController,
    required this.othersController,
  }) : super(key: key);

  final BuildContext context;
  final TextEditingController incomeController;
  final TextEditingController rentController;
  final TextEditingController emiController;
  final TextEditingController othersController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.66,
      child: Column(
        children: [
          TextAndInput(
            text: "What is your Monthly Income..?",
            controller: incomeController,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "What are your monthly recurring expenses..?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Rent :",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextField(
                  controller: rentController,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 96, 96, 186),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "EMI :",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: emiController,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 96, 96, 186),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Others :",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: othersController,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 96, 96, 186),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
