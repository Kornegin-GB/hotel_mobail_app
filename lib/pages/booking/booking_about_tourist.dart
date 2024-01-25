import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_mobile_app/helpers/counter_tourist.dart';
import 'package:hotel_mobile_app/helpers/expanded_section.dart';
import 'package:hotel_mobile_app/pages/booking/booking_tourist_form_field.dart';

class BookingAboutTourist extends StatefulWidget {
  const BookingAboutTourist({
    super.key,
    required this.count,
  });

  final int count;

  @override
  State<BookingAboutTourist> createState() => _BookingAboutTouristState();
}

class _BookingAboutTouristState extends State<BookingAboutTourist> {
  Map<int, bool> expandMap = {};

  void _changeExpand(index) async {
    expandMap[index] = !expandMap[index]!;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: widget.count,
      itemBuilder: (context, index) {
        if (expandMap[index] == null) {
          expandMap[index] = true;
        }
        return Container(
          margin: const EdgeInsets.only(top: 8.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${CounterTourist().getTitleTourist(index)} турист",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: const Color.fromRGBO(13, 114, 255, 0.1),
                    ),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        "assets/icons/arrow_down.svg",
                        width: 6,
                        height: 12,
                      ),
                      color: Colors.white,
                      onPressed: () {
                        _changeExpand(index);
                      },
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 12, left: 10, right: 10),
                    ),
                  ),
                ],
              ),
              ExpandedSection(
                expand: expandMap[index]!,
                child: const BookingTouristFormField(),
              ),
            ],
          ),
        );
      },
    );
  }
}
