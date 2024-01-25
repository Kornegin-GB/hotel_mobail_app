import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/models/hotel_page_model.dart';

class HotelRating extends StatelessWidget {
  const HotelRating({
    super.key,
    required this.pageData,
  });

  final HotelPageModel pageData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 199, 0, 0.2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.star,
            color: Color.fromRGBO(255, 168, 0, 1),
          ),
          const Padding(padding: EdgeInsets.only(left: 2)),
          Text(
            "${pageData.rating} ${pageData.ratingName}",
            style: const TextStyle(
              color: Color.fromRGBO(255, 168, 0, 1),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
