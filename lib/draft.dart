// import 'package:examui/email.dart';
// import 'package:flutter/material.dart';

// class PageViews extends StatefulWidget {
//   @override
//   State<PageViews> createState() => _PageViewsState();
// }

// class _PageViewsState extends State<PageViews> {
//   int index = 0;
//   PageController controller = PageController();

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: double.infinity,
//             height: 363,
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               image: DecorationImage(
//                 image: AssetImage("images/first.png"), // Check this path
//               ),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
//             child: Text(
//               "View And Experience Furniture With The Help Of Augmented Reality",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//           PageView(
//             controller: controller,
//             onPageChanged: (value) {
//               setState(() {
//                 index = value;
//               });
//             },
//             children: [
//               Image.asset("image/first.png"), 
//               Image.asset("image/second.png"),
//               Image.asset("image/third.png"),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 7,
//                 backgroundColor:
//                     index == 0 ? Color.fromARGB(255, 5, 51, 202) : null,
//               ),
//               const SizedBox(width: 10),
//               CircleAvatar(
//                 radius: 7,
//                 backgroundColor:
//                     index == 1 ? Color.fromARGB(255, 5, 51, 202) : null,
//               ),
//               const SizedBox(width: 10),
//               CircleAvatar(
//                 radius: 7,
//                 backgroundColor:
//                     index == 2 ? const Color.fromARGB(255, 5, 51, 202) : null,
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Skip",
//                   style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
//                 ),
//                 ElevatedButton(
//                   style: ButtonStyle(
//                     backgroundColor:
//                         MaterialStateProperty.all(const Color(0xFF0c8a7b)),
//                   ),
//                   onPressed: () {
//                     controller.nextPage(
//                       duration: const Duration(seconds: 1),
//                       curve: Curves.bounceOut,
//                     );
//                     if (index == 2) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Email()),
//                       );
//                     }
//                   },
//                   child: const Icon(Icons.arrow_forward_ios_rounded),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
