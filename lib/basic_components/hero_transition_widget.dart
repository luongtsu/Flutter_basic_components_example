import 'package:flutter/material.dart';

class HeroMainScreen extends StatelessWidget {
  const HeroMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const HeroDetailScreen();
          }));
        },
        child: Hero(
          tag: 'imageHero',
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
        ),
      ),
    );
  }
}

class HeroDetailScreen extends StatelessWidget {
  const HeroDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: SizedBox(
              width: 50,
              height: 50,
              child: Image.network(
                'https://picsum.photos/250?image=9',
              ),
            ),
          ),
        ),
      ),
    );
  }
}