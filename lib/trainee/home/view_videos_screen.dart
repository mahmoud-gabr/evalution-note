import 'package:evalution_note/app_theme.dart';
import 'package:flutter/material.dart';

class ViewVideosScreen extends StatelessWidget {
  static const String id = '/ViewVideosScreen';
  const ViewVideosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("فيديوهات تعليمية"),
        backgroundColor: AppTheme.primary,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.video_library),
            title: Text("فيديو ${index + 1}"),
            onTap: () {},
          );
        },
      ),
    );
  }
}
