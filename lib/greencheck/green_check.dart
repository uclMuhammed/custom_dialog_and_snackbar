import 'package:flutter/material.dart';

class GreenCheck extends StatelessWidget {
  const GreenCheck({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: constraints.maxWidth * 0.15,
              height: constraints.maxWidth * 0.15,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.greenAccent,
              ),
            ),
            Container(
              width: constraints.maxWidth * 0.125,
              height: constraints.maxWidth * 0.125,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                  )
                ],
              ),
              child: Center(
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: constraints.maxWidth * 0.1,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
