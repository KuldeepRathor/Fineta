import 'package:fineta/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xff9747FF),
      ),
    );
    double padding = 25;
    final sidepadding = EdgeInsets.symmetric(horizontal: padding);

    final ThemeData themeData = Theme.of(context);

    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      addVerticalSpace(padding),
                      Padding(
                        padding: sidepadding,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              backgroundColor: Color(0xFFFB7143),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Hi Kuldeep🏆',
                                style: themeData.textTheme.headlineSmall,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 100),
                              width: 60,
                              height: 60,
                              child: const Icon(
                                Icons.notifications,
                                size: 35,
                              ),
                            )
                          ],
                        ),
                      ),
                      addVerticalSpace(20),
                      Padding(padding: sidepadding),
                      Center(
                        child: Container(
                          height: 150,
                          width: 350,
                          decoration: BoxDecoration(
                            color: const Color(0xff9747FF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Lets categorize your expenses',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  addVerticalSpace(15),
                                  const Text(
                                      'Get better insights on your money'),
                                ],
                              ),
                              Expanded(
                                child: Image.asset(
                                  'assets/images/Saly-26.png',
                                  width: 250,
                                  height: 250,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      addVerticalSpace(25),
                      Padding(padding: sidepadding),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Your spends',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      addVerticalSpace(10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xff111727),
                        ),
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Spends in May',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Color(0xffBBBBBB),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: EdgeInsets.only(right: 220.0),
                            //   child: Container(
                            //     child: Text(
                            //       'Spends in May',
                            //       // textDirection: TextDirection.ltr,
                            //       // textAlign: TextAlign.left,
                            //       style: TextStyle(
                            //         color: Color(0xffBBBBBB),
                            //         fontSize: 18,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '₹ 8,040',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '+Add Funds',
                                    style: TextStyle(
                                      color: Color(0xff436CFF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xff232A44),
                              ),
                              child: null,
                              //TODO: Add th pie chart in this container
                            ),
                            Container(
                              margin: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xff232A44),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                  left: 38.0,
                                  right: 38,
                                  top: 15,
                                  bottom: 15,
                                ),
                                child: Text(
                                  'SEE DETAILED SUMMARY ⚡',
                                  style: TextStyle(
                                    color: Color(0xff436CFF),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Accounts',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Icon(Icons.more_vert),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 160,
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
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
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
                            width: 160,
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
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              'Recent Transactions',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Row(
                            children: const [
                              Text(
                                'View all',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Icon(Icons.north_east),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff111727),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: const Color(0xffFCEED4),
                                          ),
                                          child: const Icon(
                                            Icons.shopping_basket,
                                            color: Color(0xffFCAC12),
                                            size: 65,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Shopping',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          addVerticalSpace(10),
                                          const Text(
                                            'Buy Some grocery',
                                            style: TextStyle(
                                                color: Color(0xff91919F)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '-₹120',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                      addVerticalSpace(10),
                                      const Text(
                                        '10:00 AM',
                                        style: TextStyle(
                                          color: Color(0xff91919F),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff111727),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(16),
                                            color: const Color(0xffFCEED4),
                                          ),
                                          child: const Icon(
                                            Icons.shopping_basket,
                                            color: Color(0xffFCAC12),
                                            size: 65,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Shopping',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          addVerticalSpace(10),
                                          const Text(
                                            'Buy Some grocery',
                                            style: TextStyle(
                                                color: Color(0xff91919F)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '-₹120',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                      addVerticalSpace(10),
                                      const Text(
                                        '10:00 AM',
                                        style: TextStyle(
                                          color: Color(0xff91919F),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff111727),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(16),
                                            color: const Color(0xffFCEED4),
                                          ),
                                          child: const Icon(
                                            Icons.shopping_basket,
                                            color: Color(0xffFCAC12),
                                            size: 65,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Shopping',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          addVerticalSpace(10),
                                          const Text(
                                            'Buy Some grocery',
                                            style: TextStyle(
                                                color: Color(0xff91919F)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '-₹120',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                      addVerticalSpace(10),
                                      const Text(
                                        '10:00 AM',
                                        style: TextStyle(
                                          color: Color(0xff91919F),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff111727),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(16),
                                            color: const Color(0xffFCEED4),
                                          ),
                                          child: const Icon(
                                            Icons.shopping_basket,
                                            color: Color(0xffFCAC12),
                                            size: 65,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Shopping',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          addVerticalSpace(10),
                                          const Text(
                                            'Buy Some grocery',
                                            style: TextStyle(
                                                color: Color(0xff91919F)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '-₹120',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                        ),
                                      ),
                                      addVerticalSpace(10),
                                      const Text(
                                        '10:00 AM',
                                        style: TextStyle(
                                          color: Color(0xff91919F),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
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
      ),
    );
  }
}
