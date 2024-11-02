import 'package:evalution_note/app_theme.dart';
import 'package:flutter/material.dart';

class TrackProgressScreen extends StatelessWidget {
  static const String id = '/TrackProgressScreen';
  const TrackProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Track Progress"),
        backgroundColor: AppTheme.primary,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Progress Overview",
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 16),
            
          ],
        ),
      ),
    );
  }
}
