import 'package:evalution_note/widgets/deafult_elevated_botton.dart';
import 'package:evalution_note/widgets/deafult_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:evalution_note/app_theme.dart';

class AddUserFormScreen extends StatefulWidget {
  static const String id = '/AddUserFormScreen';
  const AddUserFormScreen({super.key});

  @override
  AddUserFormScreenState createState() => AddUserFormScreenState();
}

class AddUserFormScreenState extends State<AddUserFormScreen> {
  final formKey = GlobalKey<FormState>();

  String name = '';
  String email = '';
  String password = '';
  String selectedRole = 'Trainee';

  final List<String> roles = ['Admin', 'Trainer', 'Trainee'];

  void _submitForm() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User added successfully')),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New User'),
        centerTitle: true,
        backgroundColor: AppTheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DeafaultTextFormField(
                  label: 'Name',
                  hintText: 'Enter user name',
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter a name' : null,
                  onChanged: (value) => name = value,
                ),
                const SizedBox(height: 16),
                DeafaultTextFormField(
                  label: 'Email',
                  hintText: 'Enter user email',
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter an email' : null,
                  onChanged: (value) => email = value,
                ),
                const SizedBox(height: 16),
                DeafaultTextFormField(
                  label: 'Password',
                  hintText: 'Enter password',
                  isPassword: true,
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter a password' : null,
                  onChanged: (value) => password = value,
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: selectedRole,
                  decoration: InputDecoration(
                    labelText: 'Role',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: AppTheme.black,
                        width: 1.5,
                      ),
                    ),
                  ),
                  items: roles
                      .map((role) => DropdownMenuItem(
                            value: role,
                            child: Text(role),
                          ))
                      .toList(),
                  onChanged: (value) => setState(() {
                    selectedRole = value!;
                  }),
                ),
                const SizedBox(height: 24),
                DeafaultElevetedBotton(
                  label: 'Add User',
                  onPressed: _submitForm,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
