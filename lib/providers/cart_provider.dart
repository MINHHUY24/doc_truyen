import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/comic_model.dart';

class CartProvider with ChangeNotifier {
  final List<ComicInCart> _cartItems = [];

  List<ComicInCart> get cartItems => _cartItems;

  CartProvider() {
    _loadCart();
  }

  void addItem(ComicInCart item) {
    final existedItem = _cartItems.firstWhere(
          (element) => element.id == item.id,
      orElse: () => ComicInCart.defaultConstructor(),  // Sử dụng constructor mặc định cho ComicInCart
    );
    if (existedItem.id != 0) {
      existedItem.quantity++;  // Tăng số lượng nếu đã tồn tại
    } else {
      _cartItems.add(item);
    }
    _saveCart();
    notifyListeners();
  }

  void _saveCart() async {
    final prefs = await SharedPreferences.getInstance();
    final cartData = _cartItems.map((item) => item.toJson()).toList();  // Chuyển ComicInCart thành JSON
    await prefs.setString('cart', jsonEncode(cartData));
  }

  void removeItem(ComicInCart item) {
    _cartItems.remove(item);
    _saveCart();
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }

  void _loadCart() async {
    final prefs = await SharedPreferences.getInstance();
    final cartString = prefs.getString('cart');
    if (cartString != null) {
      final List<ComicInCart> cartData = (jsonDecode(cartString) as List)
          .map((item) => ComicInCart.fromJson(item))  // Đọc dữ liệu từ JSON và chuyển thành ComicInCart
          .toList();
      _cartItems.addAll(cartData);
      notifyListeners();
    }
  }
}
