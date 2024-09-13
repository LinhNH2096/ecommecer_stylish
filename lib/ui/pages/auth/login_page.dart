import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Text "Welcome Back!"
            Text(
              'Welcome\nBack!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40), // Spacing between header and TextFields

            // First TextField for username or email
            TextField(
              decoration: InputDecoration(
                labelText: 'Username or Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16), // Spacing between TextFields

            // Second TextField for password
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Hides the text for password input
            ),
            SizedBox(height: 24), // Spacing before the button

            // Login Button
            SizedBox(
              width: double.infinity, // Make the button take the full width
              child: ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                },
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}