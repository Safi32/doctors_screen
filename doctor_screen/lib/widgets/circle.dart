import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({Key? key, required this.image, this.text});

  final dynamic image;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          Positioned.fill(
            child: CircleAvatar(
              backgroundImage: image is String ? AssetImage(image) : null,
              backgroundColor: Colors.transparent,
              child:
                  image is Widget ? image : (text != null ? Text(text!) : null),
            ),
          ),
        ],
      ),
    );
  }
}
