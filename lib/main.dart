import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/pages/booking/booking_screen.dart';
import 'package:hotel_mobile_app/pages/hotel/hotel_screen.dart';
import 'package:hotel_mobile_app/pages/paid/paid_screen.dart';
import 'package:hotel_mobile_app/pages/rooms/room_screen.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(246, 246, 249, 1),
        fontFamily: 'SF Pro Display',
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HotelScreen(),
        "/rooms": (context) => const RoomScreen(),
        "/booking": (context) => const BookingScreen(),
        "/paid": (context) => const PaidScreen(),
      },
    ),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
