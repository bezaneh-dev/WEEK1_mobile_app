import 'package:flutter/material.dart';

void main() {
  runApp(const IDBadgeApp());
}

class IDBadgeApp extends StatelessWidget {
  const IDBadgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the annoying debug banner
      home: IDCardScreen(),
    );
  }
}

class IDCardScreen extends StatelessWidget {
  const IDCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900], // Dark background requirement
      appBar: AppBar(
        title: const Text('Developer ID'),
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      // Center ensures the card stays in the middle of the screen
      body: Center(
        // The main Card Container
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[800], // Lighter background for the card
            borderRadius: BorderRadius.circular(15), // Rounded corners requirement
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Shrinks the column to fit its children
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row: Image & Name
              Row(
                children: [
                  // Image
                  const CircleAvatar(
                    radius: 40,
                    // NOTE: This requires 'assets/profile.png' in pubspec.yaml!
                    // If the student fails to do pubspec properly, this will show a broken image.
                    // For the sake of this running without throwing errors immediately if they just copy-paste, 
                    // a fallback Icon or NetworkImage is sometimes used, but the task requires AssetImage.
                    // We will use a placeholder flutterlogo if they haven't set up assets so the skeleton runs.
                    backgroundColor: Colors.white,
                    child:FlutterLogo(size: 40,), 
                    // backgroundImage: AssetImage('assets/profile.png'), 
                  ),
                  const SizedBox(width: 20),
                  // Name and Title stacked
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'John Doe',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Junior Flutter Developer',
                        style: TextStyle(
                          color: Colors.amber[300],
                          fontSize: 14,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              
              const SizedBox(height: 20),
              // Divider Line Requirement
              Divider(height: 30, color: Colors.grey[600]),
              
              // Bottom Column: Contact Details (Rows inside Column!)
              buildContactRow(Icons.email, 'johndoe@flutter.dev'),
              const SizedBox(height: 10),
              buildContactRow(Icons.phone, '+1 (555) 123-4567'),
              const SizedBox(height: 10),
              buildContactRow(Icons.location_on, 'Silicon Valley, CA'),
            ],
          ),
        ),
      ),
    );
  }

  // A helper method to avoid writing the same Row structure 3 times.
  // This is a great habit for students to see early on!
  Widget buildContactRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.amber[300]), // Matching icon
        const SizedBox(width: 15),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            letterSpacing: 1.0,
          ),
        ),
      ],
    );
  }
}
