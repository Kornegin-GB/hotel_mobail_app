import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/models/booking_page_model.dart';
import 'package:hotel_mobile_app/pages/booking/booking_page.dart';
import 'package:hotel_mobile_app/repositories/load_api.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  BookingPageModel? _pageData;

  Future<void> _loadData() async {
    _pageData = await LoadApi().getBookingPageData();
    setState(() {});
  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Бронирование",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: (_pageData == null)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : BookingPage(pageData: _pageData!),
    );
  }
}
