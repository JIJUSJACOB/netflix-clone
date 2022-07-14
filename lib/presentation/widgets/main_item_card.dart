import 'package:flutter/material.dart';

import '../../core/constants.dart';

class MainItemCard extends StatelessWidget {
  const MainItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:10),
      width: 130,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius20,
        image: const DecorationImage(
            image: NetworkImage('https://www.themoviedb.org/t/p/w440_and_h660_face/9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg')),
       
      ),
    );
  }
}
