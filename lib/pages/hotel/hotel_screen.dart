import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/models/hotel_page_model.dart';
import 'package:hotel_mobile_app/pages/hotel/hotel_page.dart';
import 'package:hotel_mobile_app/repositories/load_api.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  HotelPageModel? _pageData;

  void _loadData() async {
    _pageData = await LoadApi().getHotelPageData();
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
          "Отель",
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
          : HotelPage(pageData: _pageData!),
    );
  }
}
