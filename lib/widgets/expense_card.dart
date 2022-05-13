import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/piechart_provider.dart';
import 'popup_delete.dart';

class ExpensePercentCard extends StatefulWidget {
  const ExpensePercentCard({
    Key? key,
    required this.context,
    required this.index,

    // required this.expensePercentController,
    // required this.expenseNameController,
  }) : super(key: key);

  final BuildContext context;
  final int index;

  @override
  State<ExpensePercentCard> createState() => _ExpensePercentCardState();
}

class _ExpensePercentCardState extends State<ExpensePercentCard> {
  // final TextEditingController expenseNameController;
  @override
  Widget build(BuildContext context) {
    String exName = context.read<HowToSpend>().itemName[widget.index];
    double exPercent = context.read<HowToSpend>().itemPercent[widget.index];
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
          color: const Color(0xff151923),
          borderRadius: BorderRadius.circular(12)),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            setState(() {});

            popUpCardWithDelete(context, exName, exPercent, widget.index);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.read<HowToSpend>().itemName[widget.index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    context
                        .read<HowToSpend>()
                        .itemPercent[widget.index]
                        .toString(),
                    style: const TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
