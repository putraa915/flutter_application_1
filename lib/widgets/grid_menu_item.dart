import 'package:flutter/material.dart';

class GridMenuItem extends StatelessWidget {
  final String label;
  final String imagePath;

  const GridMenuItem({
    super.key,
    required this.label,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248, // Lebar tiap kartu
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Bagian gambar motor
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(
              imagePath,
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Bagian label motor
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
