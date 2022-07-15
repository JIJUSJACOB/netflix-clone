import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';

import '../../application/hot_and_new/hot_and_new_bloc.dart';
import '../../core/constants.dart';
import 'widgets/commin_soon_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const HotAndNewEvent.loadDataInCommingSoon());
    });
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              centerTitle: false,
              title: Text(
                'New & Hot',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              actions: [
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
                kWidth,
              ],
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: '🍟 Comming Soon',
                  ),
                  Tab(
                    text: '🦁 Everyones Watching',
                  )
                ],
                indicator: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(30),
                ),
                labelColor: kBlack,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelColor: kWhite,
                isScrollable: true,
              ),
            )),
        body: TabBarView(children: [
          CommingSoonList(key: Key('comming_soon'),),
          EveryonesWatchingList(),
        ]),
      ),
    );
  }
}

class CommingSoonList extends StatelessWidget {
  const CommingSoonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotAndNewBloc, HotAndNewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
              child: CircularProgressIndicator(
                color: Colors.red,
            strokeWidth: 2,
          ));
        } else if (state.hasError) {
          return Center(child: Text('Error while loading comming soon list'));
        } else if (state.commingSoonList.isEmpty) {
          return Center(child: Text('Comming soon list empty'));
        } else {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.commingSoonList.length,
            itemBuilder: (BuildContext context, int index) {
              final movie = state.commingSoonList[index];
              if (movie.id != null) {
                return CommingSoonWidget(
                  data: state.commingSoonList[index],
                );
              }
              return const SizedBox();
            },
          );
        }
      },
    );
  }
}

class EveryonesWatchingList extends StatelessWidget {
  const EveryonesWatchingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        // return EveryonesWatchingWidget(
        //   data: null,
        // );
        return SizedBox();
      },
    );
  }
}
