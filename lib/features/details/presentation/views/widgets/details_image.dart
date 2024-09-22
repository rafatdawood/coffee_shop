import 'package:flutter/material.dart';

class DetailsImage extends StatelessWidget {
  const DetailsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 327 / 202,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: NetworkImage("https://via.placeholder.com/327x202"),
            fit: BoxFit.cover,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
