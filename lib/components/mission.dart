import 'package:flutter/material.dart';

class MissionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/pics/suggest.png', width: 550, height: 300),
            SizedBox(height: 20),
            Container(
              width: 600,
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Feedback details...',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement your submission logic here
                // For example, you can print the entered text
                print('Feedback details submitted');
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
