import 'package:flutter/material.dart';

class ExerciseTitle extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int exerciseNumber;
  final color;

  const ExerciseTitle(
      {super.key,
      required this.icon,
      required this.exerciseName,
      required this.exerciseNumber,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: color,
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exerciseName,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "$exerciseNumber Exercises",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
