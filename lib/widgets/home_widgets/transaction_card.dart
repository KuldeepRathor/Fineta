import 'package:flutter/material.dart';

import '../widgets.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff111727),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
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
                      style: TextStyle(color: Color(0xff91919F)),
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
    );
  }
}
