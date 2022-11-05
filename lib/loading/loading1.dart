import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingWidget extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  const LoadingWidget.rectangular({super.key,
    this.width = double.infinity,
    required this.height
  }): this.shapeBorder = const RoundedRectangleBorder();

  const LoadingWidget.circular({super.key,
    this.width = double.infinity,
    required this.height,
    this.shapeBorder = const CircleBorder()
  });

  @override
  Widget build(BuildContext context)  => Shimmer.fromColors(
    baseColor: Colors.grey.shade100,
    highlightColor: Colors.grey[300]!,
    period: const Duration(seconds: 2),
    child: Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        color: Colors.grey[400]!,
        shape: shapeBorder,

      ),
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