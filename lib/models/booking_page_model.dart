class BookingPageModel {
  const BookingPageModel({
    required this.id,
    required this.hotelName,
    required this.hotelAddress,
    required this.horating,
    required this.ratingName,
    required this.departure,
    required this.arrivalCountry,
    required this.tourDateStart,
    required this.tourDateStop,
    required this.numberOfNights,
    required this.room,
    required this.nutrition,
    required this.tourPrice,
    required this.fuelCharge,
    required this.serviceCharge,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'hotel_name': hotelName,
      'hotel_adress': hotelAddress,
      'horating': horating,
      'rating_name': ratingName,
      'departure': departure,
      'arrival_country': arrivalCountry,
      'tour_date_start': tourDateStart,
      'tour_date_stop': tourDateStop,
      'number_of_nights': numberOfNights,
      'room': room,
      'nutrition': nutrition,
      'tour_price': tourPrice,
      'fuel_charge': fuelCharge,
      'service_charge': serviceCharge,
    };
  }

  factory BookingPageModel.fromJson(Map<String, dynamic> parsJson) {
    return BookingPageModel(
      id: parsJson['id'],
      hotelName: parsJson['hotel_name'],
      hotelAddress: parsJson['hotel_adress'],
      horating: parsJson['horating'],
      ratingName: parsJson['rating_name'],
      departure: parsJson['departure'],
      arrivalCountry: parsJson['arrival_country'],
      tourDateStart: parsJson['tour_date_start'],
      tourDateStop: parsJson['tour_date_stop'],
      numberOfNights: parsJson['number_of_nights'],
      room: parsJson['room'],
      nutrition: parsJson['nutrition'],
      tourPrice: parsJson['tour_price'],
      fuelCharge: parsJson['fuel_charge'],
      serviceCharge: parsJson['service_charge'],
    );
  }

  final int id;
  final String hotelName;
  final String hotelAddress;
  final int horating;
  final String ratingName;
  final String departure;
  final String arrivalCountry;
  final String tourDateStart;
  final String tourDateStop;
  final int numberOfNights;
  final String room;
  final String nutrition;
  final int tourPrice;
  final int fuelCharge;
  final int serviceCharge;
}
