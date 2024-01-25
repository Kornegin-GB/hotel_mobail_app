import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/models/hotel_page_model.dart';
import 'package:hotel_mobile_app/pages/hotel/hotel_about.dart';
import 'package:hotel_mobile_app/pages/hotel/hotel_bottom_button.dart';
import 'package:hotel_mobile_app/pages/hotel/hotel_header.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({super.key, required this.pageData});

  final HotelPageModel pageData;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            HotelHeader(pageData: pageData),
            const Padding(padding: EdgeInsets.only(top: 8)),
            HotelAbout(pageData: pageData.aboutTheHotel),
            const Padding(padding: EdgeInsets.only(top: 8)),
            HotelBottomButton(pageData: pageData)
          ],
        ),
      ],
    );
  }
}
