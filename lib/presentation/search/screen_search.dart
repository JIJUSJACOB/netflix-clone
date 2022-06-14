import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/search_idle.dart';

import 'widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CupertinoSearchTextField(
              prefixIcon: Icon(CupertinoIcons.search),
              style: TextStyle(color: Colors.white),
            ),
            Expanded(child: SearchIdleWidget()),
            // Expanded(child: SearchResult()),
          ],
        ),
      )),
    );
  }
}
