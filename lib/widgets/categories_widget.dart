import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryCard(
                  categoryName: 'Sandálias',
                  imagePath: 'assets/img/6.png',
                ),
                SizedBox(width: 10),
                CategoryCard(
                  categoryName: 'Bolsas',
                  imagePath: 'assets/img/3.png',
                ),
                SizedBox(width: 10),
                CategoryCard(
                  categoryName: 'Camisetas',
                  imagePath: 'assets/img/2.png',
                ),
                SizedBox(width: 10),
                CategoryCard(
                  categoryName: 'Vestidos',
                  imagePath: 'assets/img/4.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;

  const CategoryCard({
    Key? key,
    required this.categoryName,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 40,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(height: 5),
          Text(
            categoryName,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
