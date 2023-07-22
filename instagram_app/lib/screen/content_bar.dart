import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContentBar extends StatelessWidget {
  const ContentBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                const Spacer(),
                SvgPicture.asset(
                  'assets/icons/post.svg',
                  height: 24,
                  width: 24,
                  color: Colors.black,
                ),
                const Spacer(),
                const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Spacer(),
                SvgPicture.asset(
                  'assets/icons/video.svg',
                  height: 24,
                  width: 24,
                ),
                const Spacer(),
                const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Spacer(),
                SvgPicture.asset(
                  'assets/icons/panduan.svg',
                  height: 24,
                  width: 24,
                ),
                const Spacer(),
                const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Spacer(),
                SvgPicture.asset(
                  'assets/icons/tag.svg',
                  height: 24,
                  width: 24,
                ),
                const Spacer(),
                const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
