import 'loading_card.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingCardWithOuter extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;
  final Widget child;

  const LoadingCardWithOuter.rectangular({super.key,
    this.width = double.infinity,
    required this.height,
    required this.child
  }): this.shapeBorder = const RoundedRectangleBorder();


  @override
  Widget build(BuildContext context)  => const Card(
    child: Padding(
      padding: EdgeInsets.all(18.0),
      child: LoadingCardInner(),
    ),
  );
}


// Widget buildMovieShimmer() =>
//     ListTile(
//       leading: const LoadingWidget.circular(height: 64, width: 64),
//       title: Align(
//         alignment: Alignment.centerLeft,
//         child: LoadingWidget.rectangular(height: 16,
//           width: MediaQuery.of(context).size.width*0.3,),
//       ),
//       subtitle: const LoadingWidget.rectangular(height: 14),
//     );