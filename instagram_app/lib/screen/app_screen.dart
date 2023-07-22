import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_app/constants.dart';
import 'package:instagram_app/screen/content_bar.dart';
import 'package:instagram_app/screen/highlight_status.dart';

import 'header.dart';
import 'navbar.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  List<Map<String, String>> listPosts = [
    {'image': 'assets/images/post-2.jpg'},
    {'image': 'assets/images/post-4.jpg'},
    {'image': 'assets/images/post-2.jpg'},
    {'image': 'assets/images/post-4.jpg'},
    {'image': 'assets/images/post-2.jpg'},
    {'image': 'assets/images/post-4.jpg'},
    {'image': 'assets/images/post-2.jpg'},
    {'image': 'assets/images/post-4.jpg'},
    {'image': 'assets/images/post-2.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //topbar
              const Navbar(),
              const Divider(
                height: 1,
              ),
              const SizedBox(
                height: 14,
              ),
              //priful statistic
              const Header(),
              const SizedBox(
                height: 12,
              ),
              //bio
              const SizedBox(height: 4),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'بيان آدم ساساكي',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              //buttons
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Blog',
                  style: TextStyle(
                    color: Color.fromARGB(255, 81, 81, 81),
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              //highlight
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'github.com/Bayaniadamsasaki',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 56, 146),
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 14),
              //tab menu
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ProfilButton(text: 'Edit Profil'),
                    SizedBox(width: 8),
                    ProfilButton(text: 'Dasbor profesional'),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              //tab menu
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ProfilButton(text: 'Insight'),
                    SizedBox(width: 8),
                    ProfilButton(text: 'Add Shop'),
                    SizedBox(width: 8),
                    ProfilButton(text: 'Contact'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              //tab menu
              const Highlight(),
              const SizedBox(height: 24),
              //tab menu
              const ContentBar(),
              //grid post

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  final post = listPosts[index];

                  return Container(
                    color: hyperlinkColor,
                    child: Image.asset(
                      post['image']!,
                      fit: BoxFit.cover,
                    ),
                  );
                },
                itemCount: listPosts.length,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {},
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: 'home',
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              height: 24,
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: 'search',
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              height: 24,
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: 'reels',
            icon: SvgPicture.asset(
              'assets/icons/instagram-reels.svg',
              height: 24,
              width: 24,
            ),
          ),
          BottomNavigationBarItem(
            label: 'reels',
            icon: Image.asset(
              'assets/images/shopping-bag.png',
              height: 28,
              width: 28,
            ),
          ),
          BottomNavigationBarItem(
            label: 'reels',
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: ClipOval(
                child: Image.asset('assets/images/Avatar.jpg',
                    width: 30, height: 30, fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilButton extends StatelessWidget {
  const ProfilButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 36,
        decoration: buttonDecoration,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
