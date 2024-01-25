import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/models/hotel_page_model.dart';

class HotelBottomButton extends StatelessWidget {
  const HotelBottomButton({
    super.key,
    required this.pageData,
  });

  final HotelPageModel pageData;

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
          Navigator.pushNamed(context, "/rooms", arguments: pageData.name);
        },
        child: const SizedBox(
          height: 48,
          child: Center(
            child: Text(
              "К выбору номера",
              style: TextStyle(
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
