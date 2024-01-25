import 'package:flutter/material.dart';

class RoomSelectionButton extends StatelessWidget {
  const RoomSelectionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        backgroundColor: MaterialStateProperty.all(
          const Color.fromRGBO(13, 114, 255, 1),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, "/booking");
      },
      child: const SizedBox(
        height: 48,
        child: Center(
          child: Text(
            "Выбрать номер",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.1,
            ),
          ),
        ),
      ),
    );
  }
}
