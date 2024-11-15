import 'package:flutter/material.dart';
import 'package:reqbotui/screens/upload_convert.dart';

class ProjectNameInputScreen extends StatelessWidget {
  const ProjectNameInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Project'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Project Name Input Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Project Name',
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: Colors.grey[200], // Subtle background color
              ),
            ),
            const SizedBox(height: 24), // Space between input and buttons

            // Upload Buttons
            UploadButton(
              label: 'Upload Audio',
              onPressed: () {
                // Navigate to the Project Name Input Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UploadConvertScreen()),
                );
              },
            ),
            const SizedBox(height: 16),
            UploadButton(
                label: 'Upload Text',
                onPressed: () {
                  // Implement text upload functionality
                }),
            const SizedBox(height: 16),

            const Spacer(), // Push buttons to the bottom

            // Bottom Navigation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement back action
                  },
                  child: const Text('Back'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement continue action
                  },
                  child: const Text('Continue'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UploadButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const UploadButton({required this.label, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(vertical: 20), // Large button size
            ),
            child: Text(label),
          ),
        ),
        const SizedBox(width: 8), // Space between button and status icon
        const Icon(Icons.check_circle,
            color: Colors.green), // Placeholder for upload status
        // You can change the icon based on upload status
      ],
    );
  }
}
