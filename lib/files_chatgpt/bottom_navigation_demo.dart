// import 'package:flutter/material.dart';
// //import 'package:provider/provider.dart';
// import 'package:provider_tutorial/first_page.dart';
// import 'package:provider_tutorial/second_page.dart';
// //import 'text_provider.dart';

// class BottomNavigationDemo extends StatefulWidget {
//   const BottomNavigationDemo({super.key});

//   @override
//   State<BottomNavigationDemo> createState() => _BottomNavigationDemoState();
// }

// class _BottomNavigationDemoState extends State<BottomNavigationDemo> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [
//     const FirstPage(),
//     const SecondPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'First Page',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.edit),
//             label: 'Second Page',
//           ),
//         ],
//       ),
//     );
//   }
// }
