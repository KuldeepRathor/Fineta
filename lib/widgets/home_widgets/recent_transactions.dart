import 'package:flutter/material.dart';

import 'transaction_card.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.5,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: TransactionCard(),
          );
        },
      ),
    );
  }
}
