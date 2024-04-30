import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key, required this.img, required this.text});

  final String img, text;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 30,
            color: Colors.black45,
          ),
        ],
        image: DecorationImage(
          image: NetworkImage(
            img,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: FittedBox(
          alignment: Alignment.bottomLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

}
