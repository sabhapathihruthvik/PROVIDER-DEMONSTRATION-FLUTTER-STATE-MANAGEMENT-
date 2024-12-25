import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/profile_model.dart';
import '../models/cart_model.dart';
import 'edit_profile.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final username = context.watch<ProfileModel>().username;
    final itemCount = context.select<CartModel, int>((cart) => cart.itemCount);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, $username!'),
            const SizedBox(height: 10),
            Text('You have $itemCount items in your cart.'),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Edit Profile'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const EditProfilePage()),
              ),
            ),
            ElevatedButton(
              child: const Text('View Cart'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CartPage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
