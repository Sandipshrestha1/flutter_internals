import 'package:flutter/material.dart';
import 'package:flutter_internals/keys/demo_buttons.dart';

class UiUpdates extends StatelessWidget {
  const UiUpdates({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Text(
              "Every Flutter developer should  have  a basic understanding  of flutter ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(
              height: 16,
            ),
             Text(
              "Do you understand how flutter updates UIs ?",
            ),
             SizedBox(
              height: 10,
            ),
            DemoButtons(),
          ],
        ),
      ),
    );
  }
}
