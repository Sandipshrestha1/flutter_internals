import 'package:flutter/material.dart';

class UiUpdates extends StatefulWidget {
  const UiUpdates({super.key});

  @override
  StatefulElement createElement() {
    print('UIUpdatesDemo CreateElement called');
    return super.createElement();
  }

  @override
  State<UiUpdates> createState() => _UiUpdatesState();
}

class _UiUpdatesState extends State<UiUpdates> {
  var _isUnderstood = false;
  @override
  Widget build(BuildContext context) {
    print('UIUpdates Demo Build cancel');
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Every Flutter developer should  have  a basic understanding  of flutter ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Do you understand how flutter updates UIs ?",
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        _isUnderstood = true;
                      });
                    },
                    child: const Text("Yes")),
                const SizedBox(
                  width: 18,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _isUnderstood = false;
                    });
                  },
                  child: const Text("No"),
                ),
              ],
            ),
            if (_isUnderstood) const Text('Awesome!'),
          ],
        ),
      ),
    );
  }
}
