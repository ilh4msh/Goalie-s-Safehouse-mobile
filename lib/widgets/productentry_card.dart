import 'package:flutter/material.dart';
import 'package:goalie_s_safehouse_mobile/models/product_entry.dart';

class ProductEntryCard extends StatelessWidget {
  final ProductEntry product;
  final VoidCallback onTap;

  const ProductEntryCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.grey.shade300),
          ),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Thumbnail
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'http://localhost:8000/proxy-image/?url=${Uri.encodeComponent(product.thumbnail)}',
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 180,
                      color: Colors.grey[300],
                      child: const Center(child: Icon(Icons.broken_image)),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Product name
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                // Category • Size
                Row(
                  children: [
                    Chip(
                      label: Text(product.category),
                      backgroundColor: Colors.blue.shade50,
                      labelStyle: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(width: 8),
                    Chip(
                      label: Text("Size: ${product.size.toUpperCase()}"),
                      backgroundColor: Colors.orange.shade50,
                      labelStyle: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                // Price
                Text(
                  "Rp ${product.price}",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 6),

                // Stock
                Text(
                  "Stok: ${product.stock}",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 6),

                // Description preview
                Text(
                  product.description.length > 120
                      ? '${product.description.substring(0, 120)}...'
                      : product.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.black54),
                ),

                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
