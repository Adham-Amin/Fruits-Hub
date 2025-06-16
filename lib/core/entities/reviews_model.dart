class ReviewsModel {
  final String name;
  final String date;
  final double rating;
  final String review;

  ReviewsModel({
    required this.name,
    required this.date,
    required this.rating,
    required this.review,
  });

  factory ReviewsModel.fromJson(Map<String, dynamic> json) {
    return ReviewsModel(
      name: json['name'],
      date: json['date'],
      rating: json['rating'],
      review: json['review'],
    );
  }

  toJson() {
    return {
      'name': name,
      'date': date,
      'rating': rating,
      'review': review,
    };
  }
}
