import 'package:flutter/material.dart';

class Donation {
  String productName;
  int quantity;
  String organization;

  Donation(
      {required this.productName,
      required this.quantity,
      required this.organization});

  Map<String, dynamic> toJson() {
    return {
      'productName': productName,
      'quantity': quantity,
      'organization': organization,
    };
  }

  factory Donation.fromJson(Map<String, dynamic> json) {
    return Donation(
      productName: json['productName'],
      quantity: json['quantity'],
      organization: json['organization'],
    );
  }
}
