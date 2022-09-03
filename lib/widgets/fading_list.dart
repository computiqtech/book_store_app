import 'package:flutter/material.dart';

class FadingListView extends StatelessWidget {
  const FadingListView({Key? key, required this.listView}) : super(key: key);
  final ListView listView;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        shaderCallback: (Rect rect) {
          return const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple,
              Colors.transparent,
              Colors.transparent,
              Colors.purple
            ],
            stops: [0.0, 0.07, 1.0, 1.0],
          ).createShader(rect);
        },
        blendMode: BlendMode.dstOut,
        child: listView,
      ),
    );
  }
}
