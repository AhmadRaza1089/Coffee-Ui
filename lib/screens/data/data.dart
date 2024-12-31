// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Products {
  String name;
  String price;
  String image;
  Products({
    required this.name,
    required this.price,
    required this.image,
  });

  Products copyWith({
    String? name,
    String? price,
    String? image,
  }) {
    return Products(
      name: name ?? this.name,
      price: price ?? this.price,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'price': price,
      'image': image,
    };
  }

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      name: map['name'] as String,
      price: map['price'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Products.fromJson(String source) =>
      Products.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Products(name: $name, price: $price, image: $image)';

  @override
  bool operator ==(covariant Products other) {
    if (identical(this, other)) return true;

    return other.name == name && other.price == price && other.image == image;
  }

  @override
  int get hashCode => name.hashCode ^ price.hashCode ^ image.hashCode;
}
