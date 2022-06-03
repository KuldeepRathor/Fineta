import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Split_Bill extends StatefulWidget {
  const Split_Bill({Key? key, required String title}) : super(key: key);

  @override
  State<Split_Bill> createState() => _Split_BillState();
}

class _Split_BillState extends State<Split_Bill> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: const Center(
                            child: Text(
                              'Split-Bill',
                              style: const TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ),
                          width: 351,
                          height: 76,
                          decoration: BoxDecoration(
                            color: const Color(0xff111727),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 339,
                          width: 357,
                          decoration: BoxDecoration(
                            color: Color(0xff111727),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'What is Your Name?',
                                  style: TextStyle(fontSize: 28),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                      filled: true,
                                      hintText: 'Kuldeep',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'What was your Contribution?',
                                style: TextStyle(
                                  fontSize: 28,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                      filled: true,
                                      hintText: '485',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 77,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xff436CFF),
                                ),
                                child: Center(
                                  child: Text(
                                    'Set',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
