import 'package:evalution_note/app_theme.dart';
import 'package:evalution_note/widgets/deafult_elevated_botton.dart';
import 'package:flutter/material.dart';
import 'package:evalution_note/widgets/deafult_text_form_field.dart';

class VideoManagementScreen extends StatefulWidget {
  static const String id = '/VideoManagementScreen';

  const VideoManagementScreen({super.key});

  @override
  State<VideoManagementScreen> createState() => _VideoManagementScreenState();
}

class _VideoManagementScreenState extends State<VideoManagementScreen> {
  final TextEditingController videoTitleController = TextEditingController();
  final TextEditingController videoLinkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إدارة الفيديوهات'),
        backgroundColor: AppTheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DeafaultTextFormField(
              controller: videoTitleController,
              label: 'عنوان الفيديو',
            ),
            const SizedBox(height: 16),
            DeafaultTextFormField(
              controller: videoLinkController,
              label: 'رابط الفيديو',
            ),
            const SizedBox(height: 16),
            DeafaultElevetedBotton(
              label: 'رفع الفيديو',
              onPressed: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}
