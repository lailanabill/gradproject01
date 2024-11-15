import 'package:flutter/material.dart';
import 'package:reqbot1/ResultsScreen.dart';

class ProcessingScreen extends StatefulWidget {
  @override
  _ProcessingScreenState createState() => _ProcessingScreenState();
}

class _ProcessingScreenState extends State<ProcessingScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate processing delay
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ResultsScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Processing Audio'),
      ),
      body: Center(
        child: _isLoading
            ? CircularProgressIndicator()
            : Text('Processing complete!'),
      ),
    );
  }
}