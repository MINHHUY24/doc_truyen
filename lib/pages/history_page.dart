import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/history_provider.dart'; // Provider quản lý lịch sử

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HistoryProvider>(
        builder: (context, historyProvider, child) {
          final historyItems = historyProvider.historyItems;

          if (historyItems.isEmpty) {
            return const Center(
              child: Text(
                'Bạn chưa đọc truyện nào.',
                style: TextStyle(fontSize: 18),
              ),
            );
          }

          return ListView.builder(
            itemCount: historyItems.length,
            itemBuilder: (context, index) {
              final comic = historyItems[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                elevation: 2, // Để có shadow nhẹ
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      comic.imageUrl,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    comic.title,
                    style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text('Tác giả: ${comic.author}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    color: Colors.indigo,
                    onPressed: () {
                      historyProvider.removeItem(comic);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Đã xóa "${comic.title}" khỏi lịch sử')),
                      );
                    },
                  ),
                  onTap: () {
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
