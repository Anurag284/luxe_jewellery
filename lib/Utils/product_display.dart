import 'package:flutter/material.dart';

class ProductDisplay extends StatefulWidget {
  final Widget Image; // ✅ fixed
  final String productName;
  final String productPrize;

  const ProductDisplay({
    super.key,
    required this.Image,
    required this.productName,
    required this.productPrize,
  });

  @override
  State<ProductDisplay> createState() => _ProductDisplayState();
}

class _ProductDisplayState extends State<ProductDisplay> {
  bool isFavourite = false; //state

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE + HEART ICON
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: widget.Image,
              ),

              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isFavourite = !isFavourite; //toggle
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      isFavourite ? Icons.favorite : Icons.favorite_border,
                      size: 20,
                      color: isFavourite ? Colors.red : Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // PRODUCT NAME
          Text(
            widget.productName,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: 4),

          // PRICE
          Text(
            widget.productPrize,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
