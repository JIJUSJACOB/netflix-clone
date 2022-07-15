import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../domain/new_and_hot/model/hot_and_new_response.dart';
import '../../home/widgets/custom_button_widget.dart';
import '../../widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  final HotAndNewData data;
  const EveryonesWatchingWidget({Key? key, required this.data})
      : super(key: key);

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
        VideoWidget(
          url:
              'https://cdn.vox-cdn.com/thumbor/370CQdn5QDXoaadqM5TP1Rn9l-g=/0x0:2040x1360/1200x800/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/71104668/acastro_211025_1777_netflix_0001.0.jpeg',
        ),
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
