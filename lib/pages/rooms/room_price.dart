import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/helpers/format_price.dart';
import 'package:hotel_mobile_app/models/room_page_model.dart';
import 'package:intl/intl.dart';

class RoomPrice extends StatelessWidget {
  const RoomPrice({super.key, required this.pageData});

  final RoomPageModel pageData;

  @override
  Widget build(BuildContext context) {
    NumberFormat formatPrice = FormatPrice().getFormatPrice();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          formatPrice.format(pageData.price),
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 8)),
        Text(
          pageData.pricePer.toLowerCase(),
          style: const TextStyle(
            color: Color.fromRGBO(130, 135, 150, 1),
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
