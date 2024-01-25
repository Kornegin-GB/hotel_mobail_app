import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/models/booking_page_model.dart';
import 'package:hotel_mobile_app/pages/booking/booking_details_item.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key, required this.pageData});

  final BookingPageModel pageData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Table(
        columnWidths: const <int, TableColumnWidth>{
          0: FixedColumnWidth(130),
          1: FlexColumnWidth(),
        },
        children: [
          BookingDetailsItem().dataRow(
            "Вылет из",
            pageData.departure,
          ),
          BookingDetailsItem().paddingRow(),
          BookingDetailsItem().dataRow(
            "Страна, город",
            pageData.arrivalCountry,
          ),
          BookingDetailsItem().paddingRow(),
          BookingDetailsItem().dataRow(
            "Даты",
            "${pageData.tourDateStart} - ${pageData.tourDateStop}",
          ),
          BookingDetailsItem().paddingRow(),
          BookingDetailsItem().dataRow(
            "Кол-во ночей",
            "${pageData.numberOfNights}",
          ),
          BookingDetailsItem().paddingRow(),
          BookingDetailsItem().dataRow(
            "Отель",
            pageData.hotelName,
          ),
          BookingDetailsItem().paddingRow(),
          BookingDetailsItem().dataRow(
            "Номер",
            pageData.room,
          ),
          BookingDetailsItem().paddingRow(),
          BookingDetailsItem().dataRow(
            "Питание",
            pageData.nutrition,
          ),
        ],
      ),
    );
  }
}
