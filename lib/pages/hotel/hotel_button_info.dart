import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HotelButtonInfo extends StatelessWidget {
  const HotelButtonInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromRGBO(251, 251, 252, 1),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/emoji_happy.svg",
                      width: 24,
                      height: 24,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Удобства",
                          style: TextStyle(
                            color: Color.fromRGBO(44, 48, 53, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Самое необходимое",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color.fromRGBO(130, 135, 150, 1),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: Color.fromRGBO(130, 135, 150, 0.15),
            indent: 38,
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/tick_square.svg",
                      width: 24,
                      height: 24,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          "Что включено",
                          style: TextStyle(
                            color: Color.fromRGBO(44, 48, 53, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Самое необходимое",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color.fromRGBO(130, 135, 150, 1),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: Color.fromRGBO(130, 135, 150, 0.15),
            indent: 38,
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/close_square.svg",
                      width: 24,
                      height: 24,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 12)),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          "Что не включено",
                          style: TextStyle(
                            color: Color.fromRGBO(44, 48, 53, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Самое необходимое",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color.fromRGBO(130, 135, 150, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
