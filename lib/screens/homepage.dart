import 'package:fineta/widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/home_widgets/accounts.dart';
import '../widgets/home_widgets/plant_budget.dart';
import '../widgets/home_widgets/recent_transactions.dart';
import '../widgets/home_widgets/spending_piechart.dart';
import '../widgets/home_widgets/top_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
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
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TopAppBar(themeData: themeData),
                      addVerticalSpace(24),
                      PlanYourBudget(size: size),
                      addVerticalSpace(12),
                      Padding(padding: sidepadding),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Your spends',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SpendingPieChart(size: size),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 18.0,
                          left: 18,
                          right: 18,
                          bottom: 8,
                        ),
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
                      Accounts(size: size),
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
                      RecentTransactions(size: size)
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
