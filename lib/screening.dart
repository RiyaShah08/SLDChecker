// import 'dart:convert';
// import 'package:flutter/material.dart';
//
//
// class ScreenTest extends StatefulWidget {
//   const ScreenTest({Key? key}) : super(key: key);
//
//   @override
//   State<ScreenTest> createState() => _ScreenTestState();
// }
//
// class _ScreenTestState extends State<ScreenTest> {
//
//   File? imageFile;
//
//   // void _getFromCamera() async {
//   //   XFile? pickedFile = await ImagePicker().pickImage(
//   //       source: ImageSource.camera,
//   //       maxHeight: 1080,
//   //       maxWidth: 1080
//   //   );
//   //   setState(() {
//   //     imageFile = File(pickedFile!.path);
//   //   });
//   //   Navigator.pop(context);
//   // }
//
//
//   String url = '';
//   var data;
//   String output = 'Output';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//
//             // SizedBox(height: 50),
//             // imageFile != null ?
//             //     Container(
//             //       child: Image.file(imageFile!),
//             //     ):
//
//                 Container(
//                   child: Icon(
//                     Icons.camera_enhance_rounded,
//                     color: Colors.black45,
//                     size: MediaQuery.of(context).size.width * .6,
//                   ),
//                 ),
//
//             // Padding(
//             //   padding: const EdgeInsets.all(30),
//             // child: ElevatedButton(
//             //   child: Text('Capture Image'),
//             //   onPressed: (){
//             //     _getFromCamera();
//             //   },
//             //   style: ButtonStyle(
//             //     padding: MaterialStateProperty.all(EdgeInsets.all(12)),
//             //
//             //   ),
//             // ),
//             // ),
//             SizedBox(height: 20),
//             TextField(
//               onChanged: (value) {
//                 url = 'http://41d5-35-234-2-165.ngrok.io/predict' + value.toString();
//               },
//             ),
//             TextButton(onPressed: ()async{
//               data = await fetchdata(url);
//               var decoded = jsonDecode(data);
//                setState(() {
//                  output = decoded['The rate is'];
//                });
//             }, child: Text("Predict")),
//             Text(output)
//           ],
//         ),
//       ),
//     );
//   }
// }
