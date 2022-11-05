import 'package:flutter/material.dart';
import 'loading1.dart';

class LoadingCardInner extends StatelessWidget {
  const LoadingCardInner({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const LoadingWidget.rectangular(height: 120, width: 120),
        const SizedBox(width: 16.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoadingWidget.rectangular(height:15,width: 80),
              const SizedBox(height: 16.0 / 2),
              const LoadingWidget.rectangular(height:15,width: 80),
              const SizedBox(height: 16.0 / 2),
              const LoadingWidget.rectangular(height:15,width: 80),
              const SizedBox(height: 16.0 / 2),
              Row(
                children: const [
                  Expanded(
                    child: LoadingWidget.rectangular(height:15,width: 80),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: LoadingWidget.rectangular(height:15,width: 80),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}