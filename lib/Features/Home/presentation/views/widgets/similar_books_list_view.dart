import 'package:e_bookly/Features/Home/presentation/views/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: ListViewItem(
                imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_VHpHi-Wm0FioGf4sJ_flWN2OqVCTkLklnA&s',
              ),
            );
          }),
    );
  }
}
