import 'package:flutter/material.dart';

class ProductDisplay extends StatelessWidget {
  final Image;
  final String productName;
  final String productPrize;

  const ProductDisplay({
    super.key,
    required this.Image,
    required this.productName,
    required this.productPrize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE + HEART ICON
          Stack(
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(12), child: Image),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    size: 20,
                    color: Colors.green[700],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // PRODUCT NAME
          Text(
            productName,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          SizedBox(height: 4),

          // PRICE
          Text(
            productPrize,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
