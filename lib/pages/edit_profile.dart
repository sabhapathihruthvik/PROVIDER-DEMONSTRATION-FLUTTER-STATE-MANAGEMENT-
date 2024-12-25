import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/profile_model.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final profile = context.read<ProfileModel>();
    final controller = TextEditingController(text: profile.username);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Save'),
              onPressed: () {
                profile.updateUsername(controller.text);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
