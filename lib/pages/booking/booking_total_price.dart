import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/helpers/format_price.dart';
import 'package:hotel_mobile_app/models/booking_page_model.dart';
import 'package:intl/intl.dart';

class BookingTotalPrice extends StatelessWidget {
  const BookingTotalPrice(
      {super.key, required this.pageData, required this.totalPrice});

  final BookingPageModel pageData;
  final int totalPrice;

  @override
  Widget build(BuildContext context) {
    NumberFormat formatPrice = FormatPrice().getFormatPrice();
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Тур",
                style: TextStyle(
                  color: Color.fromRGBO(130, 135, 150, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                formatPrice.format(pageData.tourPrice),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Топливный сбор",
                style: TextStyle(
                  color: Color.fromRGBO(130, 135, 150, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                formatPrice.format(pageData.fuelCharge),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Сервисный сбор",
                style: TextStyle(
                  color: Color.fromRGBO(130, 135, 150, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                formatPrice.format(pageData.serviceCharge),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "К оплате",
                style: TextStyle(
                  color: Color.fromRGBO(130, 135, 150, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                formatPrice.format(totalPrice),
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(13, 114, 255, 1)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
