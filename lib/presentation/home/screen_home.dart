import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/home/widgets/background_card.dart';
import 'package:netflix_app/presentation/home/widgets/number_card.dart';

import '../../core/constants.dart';
import '../widgets/main_item_card.dart';
import '../widgets/main_title.dart';
import '../widgets/main_title_card.dart';
import 'widgets/custom_button_widget.dart';
import 'widgets/number_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: ((context, value, child) {
        return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return false;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    BackGroundCard(),
                    kHeigth,
                    kHeigth,
                    MainTitleCard(
                      title: 'Released in the past year',
                    ),
                    kHeigth,
                    MainTitleCard(
                      title: 'Top Picks',
                    ),
                    kHeigth,
                    NumberTitleCard(),
                    kHeigth,
                    MainTitleCard(
                      title: 'Tense Dramas',
                    ),
                    kHeigth,
                    MainTitleCard(
                      title: 'Soputh Indian Cinema',
                    ),
                    kHeigth,
                  ],
                ),
                scrollNotifier.value
                    ? AnimatedContainer(
                      duration: const Duration(milliseconds: 2000),
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  'https://cdn-images-1.medium.com/max/1200/1*ty4NvNrGg4ReETxqU2N3Og.png',
                                  width: 70,
                                  height: 70,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                kWidth,
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.blue,
                                ),
                                kWidth
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'TV Shows',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Movies',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Categories',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : kHeigth
              ],
            ));
      }),
    ));
  }
}
