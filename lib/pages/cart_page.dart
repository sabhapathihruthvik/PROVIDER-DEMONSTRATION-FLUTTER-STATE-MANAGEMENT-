import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';
import '../providers.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartModel>();
    final combined = context.read<CombinedModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Column(
        children: [
          Text(combined.cartSummary),
          Expanded(
            child: ListView.builder(
              itemCount: cart.itemCount,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cart.items[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => cart.removeItem(cart.items[index]),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              cart.addItem('Item ${cart.itemCount + 1}');
            },
            child: const Text('Add Item'),
          ),
        ],
      ),
    );
  }
}
