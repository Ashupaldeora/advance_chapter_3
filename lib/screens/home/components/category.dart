import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String category;

  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          decoration: BoxDecoration(
            color: Color(0xff222222),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Text(
              category,
              style: TextStyle(color: Colors.white, fontFamily: 'arial'),
            ),
          ),
        ),
      ),
    );
  }
}
