import 'package:flutter/material.dart';

class SeeAllText extends StatelessWidget {
  const SeeAllText({required this.onpress,required this.txt});
final VoidCallback onpress;
final String txt;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15.0, top: 13),
          child: Text(txt,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: onpress,
          child: Padding(
            padding: EdgeInsets.only(right: 15.0, top: 13),
            child: Text(
              'See all',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
