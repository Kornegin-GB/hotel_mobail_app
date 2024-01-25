class RoomPageModel {
  const RoomPageModel({
    required this.id,
    required this.name,
    required this.price,
    required this.pricePer,
    required this.peculiarities,
    required this.imageUrls,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'price_per': pricePer,
      'peculiarities': peculiarities,
      'image_urls': imageUrls,
    };
  }

  factory RoomPageModel.fromJson(Map<String, dynamic> parsJson) {
    return RoomPageModel(
      id: parsJson['id'],
      name: parsJson['name'],
      price: parsJson['price'],
      pricePer: parsJson['price_per'],
      peculiarities: parsJson['peculiarities'],
      imageUrls: parsJson['image_urls'],
    );
  }

  final int id;
  final String name;
  final int price;
  final String pricePer;
  final List<dynamic> peculiarities;
  final List<dynamic> imageUrls;
}
