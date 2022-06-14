import 'package:flutter/material.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  VideoListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //left side
                  CircleAvatar(
                    radius: 30,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.volume_mute),
                    ),
                  ),

                  //right side
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/d26S5EfVXLNxRXqyFy1yyl3qRq3.jpg"),
                      ),
                      VideoActions(
                        icon: Icons.emoji_emotions,
                        title: "lol",
                      ),
                      VideoActions(
                        icon: Icons.add,
                        title: "My List",
                      ),
                      VideoActions(
                        icon: Icons.share,
                        title: "Share",
                      ),
                      VideoActions(
                        icon: Icons.play_arrow,
                        title: "Play",
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActions({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(title),
        ],
      ),
    );
  }
}
