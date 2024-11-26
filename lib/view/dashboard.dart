import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Math Utility Dashboard'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Adding an image at the top
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/dashboard_image.jpg'), // Add your image here
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Title Text
              const Text(
                'Choose an Operation:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),

              // Buttons for navigation to each screen
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/arithmetic');
                  },
                  title: const Text('Arithmetic'),
                  leading: const Icon(Icons.calculate, color: Colors.blue),
                  trailing: const Icon(Icons.arrow_forward),
                ),
              ),
              const SizedBox(height: 16),
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/simple_interest');
                  },
                  title: const Text('Simple Interest'),
                  leading: const Icon(Icons.money, color: Colors.blue),
                  trailing: const Icon(Icons.arrow_forward),
                ),
              ),
              const SizedBox(height: 16),
              Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/area_circle');
                  },
                  title: const Text('Area of Circle'),
                  leading: const Icon(Icons.circle, color: Colors.blue),
                  trailing: const Icon(Icons.arrow_forward),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
