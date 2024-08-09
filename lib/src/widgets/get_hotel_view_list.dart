import 'package:flutter/material.dart';
import 'package:flutter_angular/model/hotel_list_data.dart';
import 'package:flutter_angular/src/components/hotel_list_view.dart';

Widget getHotelViewList() {
  List<HotelListData> hotelList = HotelListData.hotelList;
  AnimationController? animationController;

    final List<Widget> hotelListViews = <Widget>[];
    for (int i = 0; i < hotelList.length; i++) {
      final int count = hotelList.length;
      final Animation<double> animation =
          Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: animationController!,
          curve: Interval((1 / count) * i, 1.0, curve: Curves.fastOutSlowIn),
        ),
      );
      hotelListViews.add(
        HotelListView(
          callback: () {},
          hotelData: hotelList[i],
          animation: animation,
          animationController: animationController!,
        ),
      );
    }
    animationController?.forward();
    return Column(
      children: hotelListViews,
    );
  }