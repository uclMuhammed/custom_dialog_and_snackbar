import 'package:flutter/material.dart';
import 'package:snackbar_dialog/dialog/my_dialog.dart';
import 'package:snackbar_dialog/snackbar/my_snackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const MyDialog(),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                const MySnackBar(),
              ],
            ),
          ),
        );
      },
    );
  }
}