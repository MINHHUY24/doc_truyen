import 'package:doc_truyen/pages/comicDetail_page.dart';
import 'package:doc_truyen/providers/favorite_provider.dart';
import 'package:doc_truyen/providers/history_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/comic_model.dart';
import '../providers/cart_provider.dart';

class CustomComicCard extends StatefulWidget {
  const CustomComicCard({super.key, required this.comic});

  final Comic comic;

  @override
  State<CustomComicCard> createState() => _CustomComicCardState();
}

class _CustomComicCardState extends State<CustomComicCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final comic = widget.comic;
    return IntrinsicHeight(
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // để nội dung căn đầu ảnh
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  comic.imageUrl,
                  width: 120,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min, // quan trọng
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      comic.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Tác giả: ${comic.author}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      comic.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton.icon(
                          icon: const Icon(Icons.more_horiz),
                          label: const Text(
                            "Đọc truyện",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.indigo,
                            ),
                          ),
                          onPressed: () {
                            Provider.of<HistoryProvider>(
                              context,
                              listen: false,
                            ).addHistory(widget.comic);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => ComicdetailPage(data: comic),
                              ),
                            );
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Provider.of<FavoriteProvider>(
                                  context,
                                ).isFavorite(comic)
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color:
                                Provider.of<FavoriteProvider>(
                                      context,
                                    ).isFavorite(comic)
                                    ? Colors.indigo
                                    : Colors.grey,
                          ),
                          onPressed: () {
                            Provider.of<FavoriteProvider>(
                              context,
                              listen: false,
                            ).toggleFavorite(comic);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  Provider.of<FavoriteProvider>(
                                        context,
                                        listen: false,
                                      ).isFavorite(comic)
                                      ? 'Đã thêm ${comic.title} vào yêu thích!'
                                      : 'Đã xóa ${comic.title} khỏi yêu thích!',
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
