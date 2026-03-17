import 'package:flutter/material.dart';

class heroWidget extends StatelessWidget {
  const heroWidget({super.key, required this.title, this.nextPage});
  final String title;
  final Widget? nextPage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPage != null
          ? () {
              Navigator.push(
                //here instead of push we can also use pushreplacement which actually replaces the page instead of stacking it.
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return nextPage!;
                  },
                ),
              );
            }
          : null,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Hero(
            tag: 'tony',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/pxfuel.jpg',
                fit: BoxFit.cover,
                height: 250,
                color: const Color.fromARGB(202, 194, 198, 2),
                colorBlendMode: BlendMode.overlay,
              ),
            ),
          ),
          FittedBox(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45.0,
                letterSpacing: 8.0,
                color: Colors.white60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
