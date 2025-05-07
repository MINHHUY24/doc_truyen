class Comic {
  final int id;
  final String title;
  final String author;
  final String description;
  final String imageUrl;
  final String content;

  // Constructor
  Comic({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.imageUrl,
    required this.content,
  });

  // Factory method to create a Comic object from JSON
  factory Comic.fromJson(Map<String, dynamic> json) {
    return Comic(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      content: json['content'],
    );
  }

  // Method to convert Comic object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'description': description,
      'imageUrl': imageUrl,
      'content': content,
    };
  }
}

class ComicInCart extends Comic {
  int quantity;

  // Constructor
  ComicInCart({
    required int id,
    required String title,
    required String author,
    required String description,
    required String imageUrl,
    required String content,
    this.quantity = 1,
  }) : super(
    id: id,
    title: title,
    author: author,
    description: description,
    imageUrl: imageUrl,
    content: content,
  );

  // Default constructor
  ComicInCart.defaultConstructor()
      : quantity = 1,
        super(id: 0, title: '', author: '', description: '', imageUrl: '', content: '');

  // Convert ComicInCart to JSON
  @override
  Map<String, dynamic> toJson() {
    final comicJson = super.toJson();
    return {
      ...comicJson,
      'quantity': quantity,
    };
  }

  // Create ComicInCart from JSON
  factory ComicInCart.fromJson(Map<String, dynamic> json) {
    return ComicInCart(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      quantity: json['quantity'],
      content: json['content'],
    );
  }
}

