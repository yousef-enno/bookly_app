import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}


// Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           color: Colors.red,
//           image:  DecorationImage(
//               image: NetworkImage(imageUrl), fit: BoxFit.fill),
//         ),
//       ),