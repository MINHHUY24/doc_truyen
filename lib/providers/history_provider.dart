import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/comic_model.dart';

class HistoryProvider with ChangeNotifier {
  final List<Comic> _historyItems = [];

  List<Comic> get historyItems => _historyItems;

  HistoryProvider() {
    _loadHistory();
  }

  void addHistory(Comic item) {
    if (!_historyItems.any((comic) => comic.id == item.id)) {
      _historyItems.insert(0, item); // Thêm mới vào đầu danh sách
      _saveHistory();
      notifyListeners();
    }
  }


  void clearHistory() {
    _historyItems.clear();
    _saveHistory();
    notifyListeners();
  }

  void _saveHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final historyData = _historyItems.map((item) => item.toJson()).toList();
    await prefs.setString('history', jsonEncode(historyData));
  }

  void _loadHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final historyString = prefs.getString('history');
    if (historyString != null) {
      final List<Comic> historyData = (jsonDecode(historyString) as List)
          .map((item) => Comic.fromJson(item))
          .toList();
      _historyItems.addAll(historyData);
      notifyListeners();
    }
  }

  void removeItem(Comic comic) {
    _historyItems.remove(comic);
    _saveHistory();
    notifyListeners();
  }
}
