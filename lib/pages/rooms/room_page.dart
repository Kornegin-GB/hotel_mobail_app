import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/helpers/slider_widget.dart';
import 'package:hotel_mobile_app/models/room_page_model.dart';
import 'package:hotel_mobile_app/pages/rooms/room_about.dart';
import 'package:hotel_mobile_app/pages/rooms/room_peculiarities.dart';
import 'package:hotel_mobile_app/pages/rooms/room_price.dart';
import 'package:hotel_mobile_app/pages/rooms/room_selection_button.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({super.key, required this.pageData});

  final RoomPageModel pageData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SliderWidget().getSlider(pageData.imageUrls),
          const Padding(padding: EdgeInsets.only(top: 8)),
          Text(
            pageData.name,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          RoomPeculiarities(peculiarities: pageData.peculiarities),
          const Padding(padding: EdgeInsets.only(top: 8)),
          const RoomAbout(),
          const Padding(padding: EdgeInsets.only(top: 16)),
          RoomPrice(pageData: pageData),
          const Padding(padding: EdgeInsets.only(top: 16)),
          const RoomSelectionButton(),
        ],
      ),
    );
  }
}
