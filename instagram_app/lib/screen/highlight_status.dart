import 'package:flutter/material.dart';

import '../constants.dart';

class Highlight extends StatelessWidget {
  const Highlight({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 74,
                width: 74,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  // color: hyperlinkColor,
                  border: Border.all(
                    color: secondaryColor,
                  ),
                  borderRadius: BorderRadius.circular(84),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/highlight-logo.jpg',
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const Text('Memories'),
            ],
          ),
          const SizedBox(width: 14),
          Column(
            children: [
              Container(
                height: 74,
                width: 74,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  // color: hyperlinkColor,
                  border: Border.all(
                    color: secondaryColor,
                  ),
                  borderRadius: BorderRadius.circular(84),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/highlight-logo.jpg',
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const Text('Memories'),
            ],
          ),
          const SizedBox(width: 14),
          Column(
            children: [
              Container(
                height: 74,
                width: 74,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  // color: hyperlinkColor,
                  border: Border.all(
                    color: secondaryColor,
                  ),
                  borderRadius: BorderRadius.circular(84),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/highlight-logo.jpg',
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const Text('Memories'),
            ],
          ),
          const SizedBox(width: 14),
          Column(
            children: [
              Container(
                height: 74,
                width: 74,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  // color: hyperlinkColor,
                  border: Border.all(
                    color: secondaryColor,
                  ),
                  borderRadius: BorderRadius.circular(84),
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const Text('Memories'),
            ],
          ),
        ],
      ),
    );
  }
}
