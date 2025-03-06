import 'package:flutter/material.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  final String email;
  final String name;

  const ProfileScreen({
    super.key,
    required this.email,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),
            const SizedBox(height: 16),
            Text(
              'Welcome, $name!',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            _buildProfileItem('Email', email),
            _buildProfileItem('Phone', '+1 234 567 8900'),
            _buildProfileItem('Address', '123 Main St, City, Country'),
            _buildProfileItem('Position', 'Software Developer'),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
} 