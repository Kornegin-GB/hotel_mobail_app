import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/helpers/format_price.dart';
import 'package:hotel_mobile_app/helpers/slider_widget.dart';
import 'package:hotel_mobile_app/models/hotel_page_model.dart';
import 'package:hotel_mobile_app/pages/hotel/hotel_rating.dart';
import 'package:intl/intl.dart';

class HotelHeader extends StatelessWidget {
  const HotelHeader({super.key, required this.pageData});

  final HotelPageModel pageData;

  @override
  Widget build(BuildContext context) {
    NumberFormat priceFormat = FormatPrice().getFormatPrice();
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SliderWidget().getSlider(pageData.imageUrls),
          const Padding(padding: EdgeInsets.only(top: 16)),
          HotelRating(pageData: pageData),
          const Padding(padding: EdgeInsets.only(top: 8)),
          Text(
            pageData.name,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 8)),
          GestureDetector(
            onTap: () {},
            child: Text(
              pageData.address,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color.fromRGBO(13, 114, 255, 1),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 16)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "от ${priceFormat.format(pageData.minimalPrice)}",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 8)),
              Text(
                pageData.priceForIt.toLowerCase(),
                style: const TextStyle(
                  color: Color.fromRGBO(130, 135, 150, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
