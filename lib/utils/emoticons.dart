import 'package:flutter/material.dart';

class Emoticons extends StatelessWidget {
  final String emoticonFace;
  const Emoticons({
    Key? key,
    required this.emoticonFace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          emoticonFace,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
