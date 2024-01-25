import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/pages/hotel/hotel_button_info.dart';
import 'package:hotel_mobile_app/pages/hotel/hotel_peculiarities.dart';

class HotelAbout extends StatelessWidget {
  const HotelAbout({super.key, required this.pageData});

  final Map<String, dynamic> pageData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Об отеле",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 8)),
          HotelPeculiarities(peculiarities: pageData.values.last),
          const Padding(padding: EdgeInsets.only(top: 12)),
          Text(
            pageData.values.first,
            style: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.9),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 16)),
          const HotelButtonInfo(),
        ],
      ),
    );
  }
}
