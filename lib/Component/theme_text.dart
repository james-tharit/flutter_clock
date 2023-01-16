import 'package:flutter/material.dart';

class ThemeText extends StatelessWidget {
  final String text;
  const ThemeText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: Theme.of(context).textTheme.headline2,
        ));
  }
}
