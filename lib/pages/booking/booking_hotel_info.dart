import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/models/booking_page_model.dart';
import 'package:hotel_mobile_app/pages/booking/booking_hotel_rating.dart';

class BookingHotelInfo extends StatelessWidget {
  const BookingHotelInfo({super.key, required this.pageData});

  final BookingPageModel pageData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BookingHotelRating(
            rating: pageData.horating,
            ratingName: pageData.ratingName,
          ),
          const Padding(padding: EdgeInsets.only(top: 8)),
          Text(
            pageData.hotelName,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 8)),
          GestureDetector(
            onTap: () {},
            child: Text(
              pageData.hotelAddress,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color.fromRGBO(13, 114, 255, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
