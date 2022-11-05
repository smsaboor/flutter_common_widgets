import 'package:flutter/material.dart';
import 'loading1.dart';

class LoadingCardTransaction extends StatelessWidget {
  const LoadingCardTransaction({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
        height: 100,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width*.5,
                  child: Column(
                    children: const [
                      LoadingWidget.rectangular(height:15,width: 100),
                      SizedBox(height: 16.0 / 2),
                      LoadingWidget.rectangular(height:15,width: 100),
                      SizedBox(height: 16.0 / 2),
                      LoadingWidget.rectangular(height:15,width: 100),
                      SizedBox(height: 16.0 / 2),
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: MediaQuery.of(context).size.width*.5,
                  child: Column(
                    children: const [
                      LoadingWidget.rectangular(height:15,width: 100),
                      SizedBox(height: 16.0 / 2),
                      LoadingWidget.rectangular(height:15,width: 100),
                      SizedBox(height: 16.0 / 2),
                      LoadingWidget.rectangular(height:15,width: 100),
                      SizedBox(height: 16.0 / 2),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}