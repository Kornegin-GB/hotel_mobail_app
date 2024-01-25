import 'package:flutter/material.dart';

class BookingHotelRating extends StatelessWidget {
  const BookingHotelRating(
      {super.key, required this.rating, required this.ratingName});

  final int rating;
  final String ratingName;

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
            "$rating $ratingName",
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
