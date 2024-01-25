import 'package:flutter/material.dart';

class RoomPeculiarities extends StatelessWidget {
  const RoomPeculiarities({super.key, required this.peculiarities});

  final List<dynamic> peculiarities;

  List<Widget> _generateChildren(int count) {
    List<Widget> items = [];
    for (int i = 0; i < count; i++) {
      items.add(
        Container(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          margin: const EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(251, 251, 252, 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            peculiarities.elementAt(i),
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(130, 135, 150, 1)),
          ),
        ),
      );
      items.add(const Padding(padding: EdgeInsets.only(left: 8)));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    var pageData = peculiarities;
    return SizedBox(
      child: Wrap(
        children: _generateChildren(pageData.length),
      ),
    );
  }
}
