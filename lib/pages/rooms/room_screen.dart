import 'package:flutter/material.dart';
import 'package:hotel_mobile_app/models/room_page_model.dart';
import 'package:hotel_mobile_app/pages/rooms/room_page.dart';
import 'package:hotel_mobile_app/repositories/load_api.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  List<RoomPageModel> _pageData = [];

  void _loadData() async {
    _pageData = await LoadApi().getRoomPageData();
    setState(() {});
  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String nameHotel = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          nameHotel,
          maxLines: 2,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _pageData.length,
        itemBuilder: (context, index) {
          return RoomPage(pageData: _pageData.elementAt(index));
        },
      ),
    );
  }
}
