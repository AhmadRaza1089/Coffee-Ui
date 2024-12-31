// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Data {
  String image;
  String name;
  String secondname;
  String price;
  IconData icon;
  Data({
    required this.image,
    required this.name,
    required this.secondname,
    required this.price,
    required this.icon,
  });

  Data copyWith({
    String? image,
    String? name,
    String? secondname,
    String? price,
    IconData? icon,
  }) {
    return Data(
      image: image ?? this.image,
      name: name ?? this.name,
      secondname: secondname ?? this.secondname,
      price: price ?? this.price,
      icon: icon ?? this.icon,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
      'secondname': secondname,
      'price': price,
      'icon': icon.codePoint,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      image: map['image'] as String,
      name: map['name'] as String,
      secondname: map['secondname'] as String,
      price: map['price'] as String,
      icon: IconData(map['icon'] as int, fontFamily: 'MaterialIcons'),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) => Data.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Data(image: $image, name: $name, secondname: $secondname, price: $price, icon: $icon)';
  }

  @override
  bool operator ==(covariant Data other) {
    if (identical(this, other)) return true;
  
    return 
      other.image == image &&
      other.name == name &&
      other.secondname == secondname &&
      other.price == price &&
      other.icon == icon;
  }

  @override
  int get hashCode {
    return image.hashCode ^
      name.hashCode ^
      secondname.hashCode ^
      price.hashCode ^
      icon.hashCode;
  }
}
