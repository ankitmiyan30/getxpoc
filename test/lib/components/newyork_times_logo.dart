import 'package:flutter/material.dart';

class NewYorkLogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: new BoxDecoration(
                color: Colors.limeAccent.shade700,
                shape: BoxShape.circle,
              ),
            ),
            Positioned(
              left: 50,
              child: Text(
                'NEW',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Text(
          'YORK',
          style: TextStyle(
            color: Colors.limeAccent.shade700,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
