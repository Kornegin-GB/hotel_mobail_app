class HotelPageModel {
  const HotelPageModel({
    required this.id,
    required this.name,
    required this.address,
    required this.minimalPrice,
    required this.priceForIt,
    required this.rating,
    required this.ratingName,
    required this.imageUrls,
    required this.aboutTheHotel,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'adress': address,
      'minimal_price': minimalPrice,
      'price_for_it': priceForIt,
      'rating': rating,
      'rating_name': ratingName,
      'image_urls': imageUrls,
      'about_the_hotel': aboutTheHotel,
    };
  }

  factory HotelPageModel.fromJson(Map<String, dynamic> parsJson) {
    return HotelPageModel(
      id: parsJson['id'],
      name: parsJson['name'],
      address: parsJson['adress'],
      minimalPrice: parsJson['minimal_price'],
      priceForIt: parsJson['price_for_it'],
      rating: parsJson['rating'],
      ratingName: parsJson['rating_name'],
      imageUrls: parsJson['image_urls'],
      aboutTheHotel: parsJson['about_the_hotel'],
    );
  }

  final int id;
  final String name;
  final String address;
  final int minimalPrice;
  final String priceForIt;
  final int rating;
  final String ratingName;
  final List<dynamic> imageUrls;
  final Map<String, dynamic> aboutTheHotel;
}
