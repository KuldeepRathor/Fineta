import 'package:flutter/material.dart';

class TextAndInput extends StatelessWidget {
  const TextAndInput({Key? key, required this.controller, required this.text})
      : super(key: key);

  final String text;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          style: const TextStyle(color: Colors.white),
          controller: controller,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              prefixIcon:
                  const Icon(Icons.attach_money_outlined, color: Colors.green),
              filled: true,
              fillColor: const Color.fromARGB(255, 96, 96, 186),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              )),
        ),
      ],
    );
  }
}
