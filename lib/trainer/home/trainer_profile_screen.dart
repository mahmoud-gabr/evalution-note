import 'package:evalution_note/widgets/deafult_elevated_botton.dart';
import 'package:flutter/material.dart';
import 'package:evalution_note/app_theme.dart';
import 'package:evalution_note/widgets/deafult_text_form_field.dart';

class TrainerProfileScreen extends StatefulWidget {
  static const String id = '/TrainerProfileScreen';

  const TrainerProfileScreen({super.key});

  @override
  State<TrainerProfileScreen> createState() => _TrainerProfileScreenState();
}

class _TrainerProfileScreenState extends State<TrainerProfileScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الملف الشخصي'),
        backgroundColor: AppTheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DeafaultTextFormField(
              controller: nameController,
              label: 'الاسم',
            ),
            const SizedBox(height: 16),
            DeafaultTextFormField(
              controller: bioController,
              label: 'نبذة',
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            DeafaultElevetedBotton(
              label: 'حفظ الملف الشخصي',
              onPressed: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}
