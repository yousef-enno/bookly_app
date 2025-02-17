import 'package:e_bookly/Features/Home/presentation/views/widgets/list_view_item.dart';
import 'package:e_bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBooksDetailsSection extends StatelessWidget {
  const SimilarBooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.19),
          child: const ListViewItem(
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_VHpHi-Wm0FioGf4sJ_flWN2OqVCTkLklnA&s',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungel Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: const Color.fromARGB(255, 141, 139, 150),
          ),
        ),
      ],
    );
  }
}
