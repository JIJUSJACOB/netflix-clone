import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';

final String image =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8LxZ4WRHYLzraf4ghkApytJXMx.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Top Searches"),
        kHeigth,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => TopSearchItemTile(),
            separatorBuilder: (context, index) => SizedBox(
              height: 20,
            ),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
          ),
        ),
        SizedBox(width: 10,),
        Expanded(child: Text('data')),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
