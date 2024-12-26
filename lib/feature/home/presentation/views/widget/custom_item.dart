import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListviewItem extends StatelessWidget {
  const CustomListviewItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) => const Icon(Icons.error)));
  }
}
