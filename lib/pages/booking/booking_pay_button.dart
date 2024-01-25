import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/helpers/format_price.dart';

class BookingPayButton extends StatelessWidget {
  const BookingPayButton(
      {super.key, required this.totalPrice, required this.formKey});

  final int totalPrice;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 28),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
          backgroundColor: MaterialStateProperty.all(
            const Color.fromRGBO(13, 114, 255, 1),
          ),
        ),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            Navigator.pushNamed(context, "/paid");
          }
        },
        child: SizedBox(
          height: 48,
          child: Center(
            child: Text(
              "Оплатить ${FormatPrice().getFormatPrice().format(totalPrice)}",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
