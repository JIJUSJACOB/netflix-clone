import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../home/widgets/custom_button_widget.dart';
import '../../widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeigth,
        Text(
          'Tall Girl 2',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        kHeigth,
        Text(
          'hjghrjg okg kfokfgod skgod kgok jgjg jglifidfjgdfgjfo igjfdop jkgdfiogj oigjdf oigjlds jgdog jkpg dgods jkgopd jgopsdkg odjg pod jgdsgj fojh jgpogp jsdpojg sgjoigj iogjspog jpoigj ogjopgjdoi gjsdog jdgopj doigj ogjdsoig jiojgiodsjgopsjgopsjopdsjgopdsj gopidsj goj goid jgoig djoisjgoi jgoi jg djij doigjiogjoioijoigh oigjoigjs',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          height: 50,
        ),
        VideoWidget(),
        kHeigth,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWidget(
              title: 'Share',
              icon: Icons.share,
              iconSize: 25,
              textSize: 15,
            ),
            kWidth,
            CustomButtonWidget(
              title: 'My List',
              icon: Icons.add,
              iconSize: 25,
              textSize: 15,
            ),
            kWidth,
            CustomButtonWidget(
              title: 'Play',
              icon: Icons.play_arrow,
              iconSize: 25,
              textSize: 15,
            ),
          ],
        ),
        kHeigth,
        kHeigth,
      ],
    );
  }
}
