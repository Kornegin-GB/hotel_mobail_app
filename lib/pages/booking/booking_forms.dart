import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/pages/booking/booking_about_buyer.dart';
import 'package:hotel_mobile_app/pages/booking/booking_about_tourist.dart';

class BookingForms extends StatefulWidget {
  const BookingForms({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  State<BookingForms> createState() => _BookingFormsState();
}

class _BookingFormsState extends State<BookingForms> {
  int count = 1;

  void counterUp() {
    if (count != 8) {
      count++;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          const BookingAboutBuyer(),
          BookingAboutTourist(
            count: count,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            padding:
                const EdgeInsets.only(top: 13, bottom: 13, left: 16, right: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Добавить туриста",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ),
                Wrap(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: const Color.fromRGBO(13, 114, 255, 1)),
                      child: IconButton(
                        icon: const Icon(Icons.add),
                        color: Colors.white,
                        onPressed: () {
                          counterUp();
                        },
                        iconSize: 24,
                        padding: const EdgeInsets.only(
                            top: 12, bottom: 12, left: 10, right: 10),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
