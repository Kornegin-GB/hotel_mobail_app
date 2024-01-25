import 'package:flutter/material.dart';

class BookingDetailsItem {
  TableRow paddingRow() {
    return const TableRow(
      children: [
        SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }

  TableRow dataRow(String itemName, String itemData) {
    return TableRow(
      children: [
        TableCell(
          child: Text(
            itemName,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(130, 135, 150, 1),
            ),
          ),
        ),
        TableCell(
          child: Text(
            itemData,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
