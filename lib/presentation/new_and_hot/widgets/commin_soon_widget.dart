import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custom_button_widget.dart';
import '../../widgets/video_widget.dart';

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            kHeigth,
            Text('FEB',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey)),
            Text(
              '11',
              style: TextStyle(
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            )
          ]),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TALL GIRL 2',
                    style: TextStyle(
                      letterSpacing: -4,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  Row(
                    children: [
                      CustomButtonWidget(
                        title: 'Remind me',
                        icon: Icons.alarm,
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        title: 'Info',
                        icon: Icons.info,
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kWidth,
                    ],
                  ),
                ],
              ),
              kHeigth,
              Text('Comming on froday'),
              kHeigth,
              Text(
                'Tall Girl 2',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              kHeigth,
              Text(
                'hjghrjg okg kfokfgod skgod kgok jgjg jglifidfjgdfgjfo igjfdop jkgdfiogj oigjdf oigjlds jgdog jkpg dgods jkgopd jgopsdkg odjg pod jgdsgj fojh jgpogp jsdpojg sgjoigj iogjspog jpoigj ogjopgjdoi gjsdog jdgopj doigj ogjdsoig jiojgiodsjgopsjgopsjopdsjgopdsj gopidsj goj goid jgoig djoisjgoi jgoi jg djij doigjiogjoioijoigh oigjoigjs',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}

