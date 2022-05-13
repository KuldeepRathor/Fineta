import 'package:fineta/providers/piechart_provider.dart';
import 'package:fineta/screens/detailed_summary.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SpendingPieChart extends StatefulWidget {
  const SpendingPieChart({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<SpendingPieChart> createState() => _SpendingPieChartState();
}

class _SpendingPieChartState extends State<SpendingPieChart> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HowToSpend>().addDummyData();
    print("inside InitState of PieChart");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    context.read<HowToSpend>().clearDummyData();
    print("inside Dispose of PieChart");

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  '₹ 8,040',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
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
            height: widget.size.height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff232A44),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: PieChart(
                PieChartData(
                    sections:
                        context.watch<HowToSpend>().getSectionData(context),
                    sectionsSpace: 5),
                // swapAnimationDuration: Duration(milliseconds: 150), // Optional
                // swapAnimationCurve: Curves.linear, // Optional
              ),
            ),
            //TODO: Add th pie chart in this container
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff232A44),
            ),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                  if (context.read<HowToSpend>().data.isEmpty) {
                    SnackBar snackBar = const SnackBar(
                      content: Text(
                        "You didn't Plan any Budget.!",
                        style: TextStyle(color: Colors.red),
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailedSummaryScreen(),
                        ));
                  }
                },
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
            ),
          ),
        ],
      ),
    );
  }
}
