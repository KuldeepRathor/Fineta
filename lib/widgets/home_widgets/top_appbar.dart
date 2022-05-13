import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({
    Key? key,
    required this.themeData,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
          ],
        ),
        const Icon(
          Icons.notifications,
          size: 35,
        )
      ],
    );
  }
}
