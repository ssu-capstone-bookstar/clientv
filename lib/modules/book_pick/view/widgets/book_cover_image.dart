import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BookCoverImage extends StatelessWidget {
  final String imageUrl;
  final String tag;

  const BookCoverImage({
    super.key,
    required this.imageUrl,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        httpHeaders: const {
          'User-Agent':
              'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36',
        },
        placeholder: (context, url) => Container(
          color: Colors.grey.shade300,
          child: const Center(child: CircularProgressIndicator(strokeWidth: 1.5)),
        ),
        errorWidget: (context, url, error) => const Center(child: Icon(Icons.broken_image)),
        fadeInDuration: const Duration(milliseconds: 300),
      ),
    );
  }
}
