import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image at the center
            Center(
              child: Image.asset(
                'assets/pics/oton.png',
                width: 750,
                height: 400,
              ),
            ),
            SizedBox(height: 20),
            // Details with icons at the bottom
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, size: 24),
                SizedBox(width: 8),
                Text(
                  'Phone: 09090572857',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.mail, size: 24),
                SizedBox(width: 8),
                Text(
                  'Email: reach@scanatomy.com',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, size: 24),
                SizedBox(width: 8),
                Text(
                  'Address: Oton, Iloilo',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
