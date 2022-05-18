// // import 'package:flutter/material.dart';
// //
// // class FirstScreen extends StatefulWidget {
// //   int counter;
// //   int counter1;
// //   String result;
// //   int totalS ;
// //   int totalA ;
// //   int totalO ;
// //    FirstScreen({required this.totalO,
// //   required this.totalA,
// //   required this.totalS,
// //   required this.counter,
// //   required this.result,
// //   required this.counter1
// //    });
// // static const String id = 'second_screen';
// //   @override
// //   State<FirstScreen> createState() => _FirstScreenState();
// // }
// //
// // class _FirstScreenState extends State<FirstScreen> {
// //
// //
// //   void change() {
// //      widget.counter = 0;
// //      widget.counter1 = 0;
// //      widget.result = '';
// //   }
// //
// //   String counterMethod() {
// //     String r = '';
// //     widget.counter++;
// //     if ( widget.counter > 33) {
// //        widget.counter1++;
// //        widget.counter = 0;
// //     }
// //
// //     if ( widget.counter1 == 0) {
// //       r = 'Subhanallah: ' +  widget.counter.toString();
// //        widget.totalS += 1;
// //     } else if ( widget.counter1 == 1) {
// //       r = 'Alhamdulillah: ' +  widget.counter.toString();
// //       if ( widget.counter == 0) {
// //         return r;
// //       }
// //
// //        widget.totalA += 1;
// //     } else if ( widget.counter1 == 2) {
// //       r = 'Allahu akbar: ' +  widget.counter.toString();
// //       if ( widget.counter == 0) {
// //         return r;
// //       }
// //        widget.totalO += 1;
// //     } else {
// //        widget.counter1 = 0;
// //     }
// //     setState(() {});
// //     return r;
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         body: Stack(
// //           children: [
// //             Image(
// //               fit: BoxFit.cover,
// //               image: AssetImage('assets/images/image.jpeg'),
// //               filterQuality: FilterQuality.high,
// //             ),
// //             Container(
// //               margin: EdgeInsets.all(20),
// //               child: MaterialButton(
// //                   minWidth: 200,
// //                   height: 70,
// //                   color: Colors.white,
// //                   child: Text(
// //                     widget.result,
// //                     style: TextStyle(color: Colors.black),
// //                   ),
// //                   onPressed: () {
// //                     change();
// //                   }),
// //             )
// //           ],
// //         ),
// //         floatingActionButton: Container(
// //           height: 100,
// //           width: 100,
// //           child: FloatingActionButton(
// //             backgroundColor: Colors.black,
// //             child: Icon(
// //               Icons.add,
// //               size: 50,
// //             ),
// //             onPressed: () {
// //               setState(() {
// //                 widget.result = counterMethod();
// //               });
// //             },
// //           ),
// //         ));
// //   }
// // }
//
// import 'package:flutter/material.dart';
//
// class FirstScreen extends StatefulWidget {
//   int counter = 0;
//   int counter1 = 0;
//   String result = '';
//   int totalS = 0;
//   int totalA = 0;
//   int totalO = 0;
//    FirstScreen({ required int counter,required int counter1,required String result, required int totalS,required int totalA,required int totalO})  {
//     this.counter = counter;
//     this.counter1 = counter1;
//     this.result = result;
//     this.totalS = totalS;
//     this.totalA = totalA;
//     this.totalO = totalO;
//    }
//   static const String id = 'second_screen';
//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }
//
// class _FirstScreenState extends State<FirstScreen> {
//
//   String counterMethod() {
//     String r = '';
//     widget.counter++;
//     if (widget.counter > 33) {
//       widget.counter1++;
//       widget.counter = 0;
//     }
//
//     if (widget.counter1 == 0) {
//       r = 'Subhanallah: ' + widget.counter.toString();
//       widget!.totalS += 1;
//     } else if (widget.counter1 == 1) {
//       r = 'Alhamdulillah: ' + widget.counter.toString();
//       if (widget.counter == 0) {
//         return r;
//       }
//
//       widget.totalA += 1;
//     } else if (widget.counter1 == 2) {
//       r = 'Allahu akbar: ' + widget.counter.toString();
//       if (widget.counter == 0) {
//         return r;
//       }
//       widget.totalO += 1;
//     } else {
//       widget.counter1 = 0;
//     }
//     setState(() {});
//     return r;
//   }
//   void change() {
//     widget.counter = 0;
//     widget.counter1 = 0;
//     widget.result = '';
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//           children: [
//             Image(
//               fit: BoxFit.cover,
//               image: AssetImage('assets/images/image.jpeg'),
//               filterQuality: FilterQuality.high,
//             ),
//             Container(
//               margin: EdgeInsets.all(20),
//               child: MaterialButton(
//                   minWidth: 200,
//                   height: 70,
//                   color: Colors.white,
//                   child: Text(
//                     widget.result,
//                     style: TextStyle(color: Colors.black),
//                   ),
//                   onPressed: () {
//                     change();
//                   }),
//             )
//           ],
//         ),
//         floatingActionButton: Container(
//           height: 100,
//           width: 100,
//           child: FloatingActionButton(
//             backgroundColor: Colors.black,
//             child: Icon(
//               Icons.add,
//               size: 50,
//             ),
//             onPressed: () {
//               setState(() {
//                 widget.result = counterMethod();
//               });
//             },
//           ),
//         )
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
