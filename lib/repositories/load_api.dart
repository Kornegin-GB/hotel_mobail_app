import 'package:dio/dio.dart';
import 'package:hotel_mobile_app/models/booking_page_model.dart';
import 'package:hotel_mobile_app/models/hotel_page_model.dart';
import 'package:hotel_mobile_app/models/room_page_model.dart';

class LoadApi {
  Future<HotelPageModel> getHotelPageData() async {
    String url = "https://run.mocky.io/v3/75000507-da9a-43f8-a618-df698ea7176d";
    HotelPageModel hotelPageData =
        HotelPageModel.fromJson(await getResponse(url));
    return hotelPageData;
  }

  Future<List<RoomPageModel>> getRoomPageData() async {
    String url = "https://run.mocky.io/v3/157ea342-a8a3-4e00-a8e6-a87d170aa0a2";
    final data = await getResponse(url);
    final dataList = data["rooms"] as List;
    List<RoomPageModel> roomPageData = dataList.map(
      (e) {
        return RoomPageModel.fromJson(e);
      },
    ).toList();
    return roomPageData;
  }

  Future<BookingPageModel> getBookingPageData() async {
    String url = "https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff";
    BookingPageModel bookingPageData =
        BookingPageModel.fromJson(await getResponse(url));
    // debugPrint(hotelPageData.toString());
    return bookingPageData;
  }

  Future<Map<String, dynamic>> getResponse(String url) async {
    final response = await Dio().get(url);
    return response.data;
  }
}
