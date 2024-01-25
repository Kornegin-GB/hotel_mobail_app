import 'package:flutter/material.dart';

class RoomAbout extends StatelessWidget {
  const RoomAbout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 2, top: 5, bottom: 5),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(13, 114, 255, 0.1),
          borderRadius: BorderRadius.circular(5),
        ),
        width: 210,
        child: const Row(
          children: [
            Text(
              "Подробнее о номере",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(13, 114, 255, 1)),
            ),
            Padding(padding: EdgeInsets.only(left: 12)),
            Icon(Icons.arrow_forward_ios,
                color: Color.fromRGBO(13, 114, 255, 1)),
          ],
        ),
      ),
    );
  }
}
