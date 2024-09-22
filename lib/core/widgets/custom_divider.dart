import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0xFFE3E3E3),
      thickness: 1.6,
      endIndent: 16,
      indent: 16,
    );
  }
}
