import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/favorite_provider.dart'; // Provider quản lý yêu thích

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<FavoriteProvider>(
        builder: (context, favoriteProvider, child) {
          final favoriteComics = favoriteProvider.favoriteComics;

          if (favoriteComics.isEmpty) {
            return const Center(
              child: Text(
                'Bạn chưa yêu thích truyện nào.',
                style: TextStyle(fontSize: 18),
              ),
            );
          }

          return ListView.builder(
            itemCount: favoriteComics.length,
            itemBuilder: (context, index) {
              final comic = favoriteComics[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                elevation: 2, // Để có shadow nhẹ
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  // contentPadding: const EdgeInsets.all(8),
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
                      favoriteProvider.toggleFavorite(comic);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Đã xóa "${comic.title}" khỏi yêu thích')),
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
