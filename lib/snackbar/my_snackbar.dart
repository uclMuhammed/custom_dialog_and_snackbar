import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  Stack greenCheck(BoxConstraints constraints) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: constraints.maxWidth * 0.1,
          height: constraints.maxWidth * 0.1,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.greenAccent,
          ),
        ),
        Container(
          width: constraints.maxWidth * 0.075,
          height: constraints.maxWidth * 0.075,
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
              size: constraints.maxWidth * 0.06,
            ),
          ),
        ),
      ],
    );
  }

  void _showCustomSnackbar(BuildContext context, BoxConstraints constraints) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        showCloseIcon: true,
        backgroundColor: Colors.grey,
        content: Row(
          children: [
            greenCheck(constraints),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('This is a Title!'),
                Text('This is a content, you can wright anything!'),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ElevatedButton(
          onPressed: () {
            _showCustomSnackbar(context, constraints);
          },
          child: const Text('Snackbar'),
        );
      },
    );
  }
}