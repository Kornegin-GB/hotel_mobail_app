import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/models/booking_page_model.dart';
import 'package:hotel_mobile_app/pages/booking/booking_details.dart';
import 'package:hotel_mobile_app/pages/booking/booking_forms.dart';
import 'package:hotel_mobile_app/pages/booking/booking_hotel_info.dart';
import 'package:hotel_mobile_app/pages/booking/booking_pay_button.dart';
import 'package:hotel_mobile_app/pages/booking/booking_total_price.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key, required this.pageData});

  final BookingPageModel pageData;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    int totalPrice =
        pageData.serviceCharge + pageData.fuelCharge + pageData.tourPrice;
    return ListView(
      children: [
        const Padding(padding: EdgeInsets.only(top: 8)),
        BookingHotelInfo(pageData: pageData),
        const Padding(padding: EdgeInsets.only(top: 8)),
        BookingDetails(pageData: pageData),
        const Padding(padding: EdgeInsets.only(top: 8)),
        BookingForms(formKey: formKey),
        const Padding(padding: EdgeInsets.only(top: 8)),
        BookingTotalPrice(pageData: pageData, totalPrice: totalPrice),
        const Padding(padding: EdgeInsets.only(top: 8)),
        BookingPayButton(totalPrice: totalPrice, formKey: formKey),
      ],
    );
  }
}
