// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_tutorial/countermodel.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<Countermodel>(
//       builder: (context, value, child) => Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text("You have incremented the counter this many times"),
//               Text(
//                 value.count.toString(),
//                 style: Theme.of(context).textTheme.headlineLarge,
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             final counter = context.read<Countermodel>();
//             counter.increment();
//           },
//           tooltip: 'Increment',
//           child: const Icon(Icons.add),
//         ),
//         backgroundColor: Colors.orange,
//       ),
//     );
//   }
// }
