import 'package:flutter/material.dart';

import '../widgets.dart';

class Accounts extends StatelessWidget {
  const Accounts({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 12),
              width: size.width * 0.5,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff111727),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff232A44)),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Text(
                            '21***435',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    addVerticalSpace(5),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'A/C Balance',
                        style: TextStyle(
                          color: Color(0xffB5C5FF),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '₹ 8,040',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    addVerticalSpace(18),
                    Row(
                      children: const [
                        Icon(
                          Icons.sync,
                          color: Color(0xffB5C5FF),
                          size: 18,
                        ),
                        Text(
                          'Data sync today',
                          style: TextStyle(
                            color: Color(0xffB5C5FF),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: size.width * 0.5,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff111727),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff232A44)),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Text(
                            '21***435',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    addVerticalSpace(5),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'A/C Balance',
                        style: TextStyle(
                          color: Color(0xffB5C5FF),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '₹ ****',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    addVerticalSpace(18),
                    Row(
                      children: const [
                        Icon(
                          Icons.sync,
                          color: Color(0xffFFA3A3),
                          size: 18,
                        ),
                        Text(
                          'Data not synced',
                          style: TextStyle(
                            color: Color(0xffFFA3A3),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
