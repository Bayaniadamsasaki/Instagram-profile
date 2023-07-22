import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            const Text(
              'adaa_mmmm',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            const Icon(Icons.keyboard_arrow_down_rounded),
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const Spacer(),
            SvgPicture.asset(
              'assets/icons/add.svg',
              height: 25,
              width: 25,
            ),
            const SizedBox(
              width: 24,
            ),
            SvgPicture.asset(
              'assets/icons/Menu.svg',
              height: 40,
              width: 40,
            ),
          ],
        ),
      ),
    );
  }
}
