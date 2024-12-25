//import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'models/profile_model.dart';
import 'models/cart_model.dart';

List<SingleChildWidget> setupProviders() {
  return [
    ChangeNotifierProvider(create: (_) => ProfileModel()),
    ChangeNotifierProvider(create: (_) => CartModel()),
    ProxyProvider2<ProfileModel, CartModel, CombinedModel>(
      update: (context, profile, cart, _) => CombinedModel(profile, cart),
    ),
  ];
}

class CombinedModel {
  final ProfileModel profile;
  final CartModel cart;

  CombinedModel(this.profile, this.cart);

  String get cartSummary =>
      "${profile.username} has ${cart.itemCount} items in their cart.";
}
