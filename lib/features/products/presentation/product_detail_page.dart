import 'package:flutter/material.dart';
import '../domain/product.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailItem('Title', product.title),
            _buildDivider(),
            _buildDetailItem('Brand', product.brand),
            _buildDivider(),
            _buildDetailItem('Description', product.description),
            _buildDivider(),
            _buildDetailItem('Category', product.category),
            _buildDivider(),
            _buildDetailItem('Price', '\$${product.price.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          value,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey[800],
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Divider(
        color: Colors.grey[400],
        thickness: 1.0,
      ),
    );
  }
}
