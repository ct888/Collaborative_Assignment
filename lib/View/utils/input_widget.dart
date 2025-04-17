import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String label;
  final double width;
  final double height;

  const TextInput({
    required this.label,
    required this.width,
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: height / 3,
            child: SizedBox(
              width: width - 40,
              height: 18,
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'ADLaM Display',
                  fontWeight: FontWeight.w400,
                  height: 1.08,
                  letterSpacing: 0.80,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
