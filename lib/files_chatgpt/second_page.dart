// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'text_provider.dart';

// class SecondPage extends StatelessWidget {
//   const SecondPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = TextEditingController();
//     final textProvider = context.read<TextProvider>();

//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextField(
//             controller: controller,
//             decoration: const InputDecoration(labelText: 'Enter text here'),
//           ),
//           const SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               textProvider.updateText(controller.text);
//               controller.clear();
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(content: Text('Text updated!')),
//               );
//             },
//             child: const Text('Save'),
//           ),
//         ],
//       ),
//     );
//   }
// }
