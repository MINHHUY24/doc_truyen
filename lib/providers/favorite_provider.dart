import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/comic_model.dart';

class FavoriteProvider with ChangeNotifier {
  List<Comic> favoriteComics = []; // Lưu danh sách Comic

  FavoriteProvider() {
    _loadFavorites(); // Load dữ liệu lúc khởi tạo
  }

  void toggleFavorite(Comic item) {
    if (favoriteComics.any((comic) => comic.id == item.id)) {
      favoriteComics.removeWhere((comic) => comic.id == item.id);
    } else {
      favoriteComics.add(item);
    }
    _saveFavorites(); // Lưu lại vào SharedPreferences
    notifyListeners();
  }

  bool isFavorite(Comic item) {
    return favoriteComics.any((comic) => comic.id == item.id);
  }

  void clearFavorites() {
    favoriteComics.clear();
    _saveFavorites();
    notifyListeners();
  }

  void _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoriteData = favoriteComics.map((item) => item.toJson()).toList();
    await prefs.setString('favorites', jsonEncode(favoriteData));
  }

  void _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoriteString = prefs.getString('favorites');
    if (favoriteString != null) {
      final List<Comic> favoriteData = (jsonDecode(favoriteString) as List)
          .map((item) => Comic.fromJson(item))
          .toList();
      favoriteComics.addAll(favoriteData);
      notifyListeners();
    }
  }
}
