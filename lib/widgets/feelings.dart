import 'package:dribblementalhealthclone/widgets/emoticon.dart';
import 'package:flutter/material.dart';

class Feelings extends StatelessWidget {
  final List<String> emojis = [
    '😄',
    '😢',
    '😡',
    '😍',
    '😱',
  ];

  Feelings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'How are you feeling today?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.more_horiz),
              color: Colors.white,
              onPressed: () {
                print('Arrow button pressed');
              },
            )
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: emojis.map((e) => Emoticon(emoji: e)).toList(),
        ),
      ],
    );
  }
}
