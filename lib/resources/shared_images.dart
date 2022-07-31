import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

final List<Widget> images = [
  imageThumbnailBuilder(
      "https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
  imageThumbnailBuilder(
      "https://www.freecodecamp.org/news/content/images/size/w2000/2021/09/brett-jordan-M3cxjDNiLlQ-unsplash.jpg"),
  imageThumbnailBuilder(
      "https://images.unsplash.com/photo-1605870445919-838d190e8e1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwb2JqZWN0c3xlbnwwfHwwfHw%3D&w=1000&q=80"),
  summaryThumbnailBuilder()
];

Widget imageThumbnailBuilder(String imageUrl) {
  return SizedBox(
    height: 100,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget summaryThumbnailBuilder() {
  return Container(
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: const Color.fromARGB(33, 255, 255, 255),
    ),
    child: const Center(
      child: Text(
        "+11",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    ),
  );
}
