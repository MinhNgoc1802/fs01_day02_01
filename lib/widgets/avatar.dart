import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fs01_day02_01/widgets/widgets.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.imageUrl,
    this.size = 60.0,
    this.isOnline = false,
    this.newMessageNumber = 0,
  }) : super(key: key);

  final String imageUrl;
  final double size;
  final bool isOnline;
  final int newMessageNumber;

  @override
  Widget build(BuildContext context) {
    final double _radius = size / 2.0;
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              _radius,
            ),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: size,
              width: size,
              alignment: Alignment.center,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: (isOnline)
                ? const CircleOnline()
                : NewMessageNumber(
                    number: newMessageNumber,
                  ),
          )
        ],
      ),
    );
  }
}
