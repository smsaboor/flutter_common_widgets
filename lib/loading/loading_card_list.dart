import 'Loading_card_Outer.dart';
import 'loading_card.dart';
import 'package:flutter/material.dart';


class LoadingCardList extends StatelessWidget {
  const LoadingCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: const [
          LoadingCardWithOuter.rectangular(height: 100, child: LoadingCardInner()),
          SizedBox(height: 20,),
          LoadingCardWithOuter.rectangular(height: 100, child: LoadingCardInner()),
          SizedBox(height: 20,),
          LoadingCardWithOuter.rectangular(height: 100, child: LoadingCardInner()),
          SizedBox(height: 20,),
          LoadingCardWithOuter.rectangular(height: 100, child: LoadingCardInner()),
        ],
      ),
    );
  }
}
