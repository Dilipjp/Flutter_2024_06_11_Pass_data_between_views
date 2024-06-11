import 'package:flutter/material.dart';
import 'datamodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = ['car', 'bus'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen(items: items)),
            );
          },
          child: const Text('Go'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final List<String> items;
  const SecondScreen({required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}


//Named routing
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const FirstScreen(),
//       },
//       onGenerateRoute: (settings) {
//         if (settings.name == '/second') {
//           final List<String>? items = settings.arguments as List<String>?;
//           if (items != null) {
//             return MaterialPageRoute(
//               builder: (context) => SecondScreen(items: items),
//             );
//           } else {
//             return MaterialPageRoute(
//               builder: (context) => const ErrorScreen(),
//             );
//           }
//         }
//         return null;
//       },
//     );
//   }
// }
//
// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<String> items = ['car', 'bus'];
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Go'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(
//               context,
//               '/second',
//               arguments: items,
//             );
//           },
//           child: const Text('Move'),
//         ),
//       ),
//     );
//   }
// }
//
// class SecondScreen extends StatelessWidget {
//   final List<String> items;
//
//   const SecondScreen({required this.items, super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Here we go'),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(items[index]),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class ErrorScreen extends StatelessWidget {
//   const ErrorScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Error'),
//       ),
//       body: const Center(
//         child: Text('No items were passed to the second screen.'),
//       ),
//     );
//   }
// }


// Custom Data Model

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: const FirstScreen(),
//     );
//   }
// }
//
// class FirstScreen extends StatefulWidget {
//   const FirstScreen({super.key});
//
//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }
//
// class _FirstScreenState extends State<FirstScreen> {
//   String textData = '';
//   int numberData = 0;
//   bool booleanData = false;
//   void navigatetoSecondScreen(){
//     DataModel dataModel = DataModel(
//       textData: textData,
//       numberData: numberData,
//       booleanData: booleanData,
//     );
//     Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(dataModel : dataModel)));
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('aaaa'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               onChanged: (value){
//                 setState(() {
//                   textData = value;
//                 });
//               },
//               decoration: InputDecoration(
//                 labelText: 'Enter text data'
//               ),
//             ),
//             SizedBox(height: 10,),
//             TextField(
//               onChanged: (value){
//                 setState(() {
//                   numberData = int.tryParse(value) ?? 0;
//                 });
//               },
//               decoration: InputDecoration(
//                   labelText: 'Enter text data'
//               ),
//             ),
//             SizedBox(height: 10,),
//            Row(
//              children: [
//                Text('Boolian data'),
//                Switch(value: booleanData, onChanged: (value){
//                  setState(() {
//                    booleanData = value;
//                  });
//                })
//              ],
//            ),
//             SizedBox(height: 10,),
//             ElevatedButton(onPressed: navigatetoSecondScreen, child: Text('Second screen'))
//
//           ],
//         ),
//       ),
//     );
//   }
// }
// class SecondScreen extends StatelessWidget {
//   final DataModel dataModel;
//  SecondScreen({required this.dataModel});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('second'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Text data :${dataModel.textData}')
//           ],
//         ),
//       ),
//     );
//   }
// }










