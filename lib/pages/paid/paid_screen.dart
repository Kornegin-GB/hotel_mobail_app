import 'package:flutter/material.dart';

class PaidScreen extends StatelessWidget {
  const PaidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Заказ оплачен",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(left: 46, right: 46),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  color: const Color.fromRGBO(246, 246, 249, 1),
                ),
                child: Image.asset(
                  "assets/image_page/party_popper.png",
                  width: 72,
                  height: 72,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 32)),
              const Text(
                "Ваш заказ принят в работу",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                "Подтверждение заказа №104893 может занять некоторое время "
                "(от 1 часа до суток). Как только мы получим ответ от "
                "туроператора, вам на почту придет уведомление.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromRGBO(130, 135, 150, 1),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 28),
        color: Colors.white,
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
            backgroundColor: MaterialStateProperty.all(
              const Color.fromRGBO(13, 114, 255, 1),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
          child: const SizedBox(
            height: 48,
            child: Center(
              child: Text(
                "Супер !",
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
      ),
    );
  }
}
