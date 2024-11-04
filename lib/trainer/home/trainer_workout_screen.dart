import 'package:evalution_note/app_theme.dart';
import 'package:evalution_note/widgets/deafult_elevated_botton.dart';
import 'package:flutter/material.dart';
import 'package:evalution_note/widgets/deafult_text_form_field.dart';

class WorkoutProgramDesignScreen extends StatefulWidget {
  static const String id = '/WorkoutProgramDesignScreen';

  const WorkoutProgramDesignScreen({super.key});

  @override
  State<WorkoutProgramDesignScreen> createState() => _WorkoutProgramDesignScreenState();
}

class _WorkoutProgramDesignScreenState extends State<WorkoutProgramDesignScreen> {
  final TextEditingController programNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تصميم برنامج تدريبي'),
        backgroundColor: AppTheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DeafaultTextFormField(
              controller: programNameController,
              label: 'اسم البرنامج',
            ),
            const SizedBox(height: 16),
            DeafaultTextFormField(
              controller: descriptionController,
              label: 'الوصف',
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            DeafaultElevetedBotton(
              label: 'حفظ البرنامج',
              onPressed: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}
