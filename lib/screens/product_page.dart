import 'package:flutter/material.dart';
import 'checkout_page.dart';

/// Shows a single product with quantity controls and Buy Now button.
class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _quantity = 1;
  final double _price = 79.99;

  @override
  Widget build(BuildContext context) {
    final total = _price * _quantity;

    return Scaffold(
      appBar: AppBar(title: const Text('Shop')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Product image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'data:image/jpeg;base64,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',
                height: 220,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  height: 220,
                  color: Colors.grey[800],
                  child: const Icon(Icons.headphones, size: 80, color: Colors.white54),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Text('Wireless Headphones',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('₱${_price.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 20, color: Colors.greenAccent)),
            const SizedBox(height: 12),
            Text(
              'Premium noise-cancelling wireless headphones with 30-hour battery life.',
              style: TextStyle(fontSize: 14, color: Colors.grey[400]),
            ),

            const SizedBox(height: 24),

            // Quantity controls
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Minus button
                IconButton.filled(
                  onPressed: _quantity > 1
                      ? () => setState(() => _quantity--)
                      : null,
                  icon: const Icon(Icons.remove),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    disabledBackgroundColor: Colors.grey[900],
                  ),
                ),

                // Quantity display
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '$_quantity',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),

                // Plus button
                IconButton.filled(
                  onPressed: () => setState(() => _quantity++),
                  icon: const Icon(Icons.add),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Total
            Center(
              child: Text(
                'Total: ₱${total.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ),

            const Spacer(),

            // Buy Now button
            ElevatedButton.icon(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CheckoutPage(
                    productName: 'Wireless Headphones',
                    price: _price,
                    quantity: _quantity,
                  ),
                ),
              ),
              icon: const Icon(Icons.shopping_cart),
              label: Text('Buy Now — ₱${total.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 16)),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}