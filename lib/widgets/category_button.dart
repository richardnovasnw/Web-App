import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(title),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color(0xfff3f9f9),
            ),
            foregroundColor: MaterialStateProperty.all(
              Colors.black,
            ),
            shape: MaterialStateProperty.all(const StadiumBorder())),
      ),
    );
  }
}
