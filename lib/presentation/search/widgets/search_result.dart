import 'package:flutter/material.dart';

import '../../../core/constants.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/d26S5EfVXLNxRXqyFy1yyl3qRq3.jpg";

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Moviess and TV"),
        kHeigth,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1 / 2,
          children: List.generate(20, (index) {
            return const MainCard();
          }),
        )),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
