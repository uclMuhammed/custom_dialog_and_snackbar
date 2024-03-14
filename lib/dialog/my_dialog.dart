import 'package:flutter/material.dart';
import 'package:snackbar_dialog/greencheck/green_check.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: Padding(
                  padding: EdgeInsets.all(constraints.maxWidth * 0.02),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.close),
                          ),
                        ],
                      ),
                      const GreenCheck(),
                      const Text('Dialog Başlık',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold)),
                      SizedBox(height: constraints.maxWidth * 0.05),
                      const Text('Bu bir dialog kutusu örneğidir.'),
                      SizedBox(height: constraints.maxWidth * 0.05),
                      ElevatedButton(
                        child: const Text('Okey'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: const Text('Dialog'),
      );
    });
  }
}