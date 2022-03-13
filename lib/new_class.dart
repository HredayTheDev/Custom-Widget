import 'package:flutter/material.dart';


Widget MyProfile(String title, String image) {
  return Column(
    children: [
      Center(child: Text(title)),
     Image.network(image),
    ],
  );
}