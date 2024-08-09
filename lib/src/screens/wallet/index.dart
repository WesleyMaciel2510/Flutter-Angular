import 'package:flutter/material.dart';
import 'package:flutter_angular/hotel_app_theme.dart';
import 'package:flutter_angular/main.dart';
import 'package:flutter_angular/model/hotel_list_data.dart';
import 'package:flutter_angular/src/components/hotel_list_view.dart';
import 'package:flutter_angular/src/widgets/get_app_bar_ui.dart';
import 'package:flutter_angular/src/widgets/get_filter_bar_ui.dart';
import 'package:flutter_angular/src/widgets/get_search_bar_ui.dart';
import 'package:flutter_angular/src/widgets/get_timedate_ui.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<HotelListData> hotelList = HotelListData.hotelList;
  final ScrollController _scrollController = ScrollController();

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 5));

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

@override
Widget build(BuildContext context) {
  return Theme(
    data: PlaceAppTheme.buildLightTheme(),
    child: Scaffold(
      appBar: AppBar(
        title: const Text('Wallet Screen'),
      ),
      body: Stack(
        children: <Widget>[
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Column(
              children: <Widget>[
                Expanded(
                  child: NestedScrollView(
                    controller: _scrollController,
                    headerSliverBuilder:
                        (BuildContext context, bool innerBoxIsScrolled) {
                      return <Widget>[
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              return Column(
                                children: <Widget>[
                                  getSearchBarUI(
                                    context: context,
                                    startDate: startDate,
                                    endDate: endDate,
                                    showDemoDialog: (BuildContext context) {
                                      // Behavior for showDemoDialog
                                    },
                                  ),
                                  getTimeDateUI(
                                    context: context,
                                    startDate: startDate,
                                    endDate: endDate,
                                    showDemoDialog: (BuildContext context) {
                                      // Behavior for showDemoDialog
                                    },
                                  ),
                                ],
                              );
                            },
                            childCount: 1,
                          ),
                        ),
                        SliverPersistentHeader(
                          pinned: true,
                          floating: true,
                          delegate: ContestTabHeader(
                            getFilterBarUI(context),
                          ),
                        ),
                      ];
                    },
                    body: Container(
                      color: PlaceAppTheme.buildLightTheme().colorScheme.surface,
                      child: ListView.builder(
                        itemCount: hotelList.length,
                        padding: const EdgeInsets.only(top: 8),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          final int count =
                              hotelList.length > 10 ? 10 : hotelList.length;
                          final Animation<double> animation =
                              Tween<double>(begin: 0.0, end: 1.0).animate(
                                  CurvedAnimation(
                                      parent: animationController!,
                                      curve: Interval(
                                          (1 / count) * index, 1.0,
                                          curve: Curves.fastOutSlowIn)));
                          animationController?.forward();
                          return HotelListView(
                            callback: () {},
                            hotelData: hotelList[index],
                            animation: animation,
                            animationController: animationController!,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

}
