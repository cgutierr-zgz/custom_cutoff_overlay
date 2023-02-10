import 'package:flutter/material.dart';

class CustomBorder extends StatelessWidget {
  const CustomBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: const ColorFilter.mode(
        Colors.purple,
        BlendMode.srcOut,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          const DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black,
              backgroundBlendMode: BlendMode.dstOut,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 200,
              bottom: 200,
              left: 50,
              right: 50,
            ),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
