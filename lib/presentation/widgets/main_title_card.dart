import 'package:flutter/material.dart';

import '../../core/constants.dart';
import 'main_item_card.dart';
import 'main_title.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  const MainTitleCard({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     MainTitle(title: title),
    kHeigth,
    LimitedBox(
      maxHeight: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(10, (index) =>  MainItemCard()),
      ),
    )
      ],
    );
  }
}
