import 'package:fruits_hub/core/entities/reviews_model.dart';

class ProductModel {
  final String code;
  final String name;
  final String description;
  final num price;
  String? imageUrl;
  final bool isFeaturedProduct;
  final int expirationDate;
  final bool isOrignalProduct;
  final num calories;
  final num rating;
  final num ratingCount;
  final num bestSeller;
  final List<ReviewsModel> reviews;

  ProductModel({
    this.bestSeller = 0,
    required this.reviews,
    required this.expirationDate,
    required this.isOrignalProduct,
    this.rating = 0,
    this.ratingCount = 0,
    required this.calories,
    required this.isFeaturedProduct,
    required this.code,
    required this.name,
    required this.description,
    required this.price,
    this.imageUrl,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    bestSeller: json['bestSeller'],
    code: json['code'],
    name: json['name'],
    description: json['description'],
    price: json['price'],
    imageUrl: json['imageUrl'],
    isFeaturedProduct: json['isFeaturedProduct'],
    expirationDate: json['expirationDate'],
    isOrignalProduct: json['isOrignalProduct'],
    calories: json['calories'],
    rating: json['rating'],
    ratingCount: json['ratingCount'],
    reviews: (json['reviews'] as List<dynamic>?)
    ?.map((e) => ReviewsModel.fromJson(e as Map<String, dynamic>))
    .toList() ?? [],
  );

  toJson() => {
    'bestSeller': bestSeller,
    'code': code,
    'name': name,
    'description': description,
    'price': price,
    'imageUrl': imageUrl,
    'isFeaturedProduct': isFeaturedProduct,
    'expirationDate': expirationDate,
    'isOrignalProduct': isOrignalProduct,
    'caleries': calories,
    'rating': rating,
    'ratingCount': ratingCount,
    'reviews': reviews,
  };
}
