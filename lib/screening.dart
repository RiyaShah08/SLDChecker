import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';


class ScreenTest extends StatefulWidget {
  const ScreenTest({Key? key}) : super(key: key);

  @override
  State<ScreenTest> createState() => _ScreenTestState();
}
//
 class _ScreenTestState extends State<ScreenTest> {
    XFile? ImageFile;
    bool textscanning = false;
    String scannedText = "";
//
//    // void _getFromCamera() async {
//    //   XFile? pickedFile = await ImagePicker().pickImage(
//    //       source: ImageSource.camera,
//    //       maxHeight: 1080,
//    //       maxWidth: 1080
//    //   );
//    //   setState(() {
//    //     imageFile = File(pickedFile!.path);
//    //   });
//    //   Navigator.pop(context);
//    // }
//
//
//    String url = '';
//    var data;
//    String output = 'Output';

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: SingleChildScrollView(
         child: Container(
           margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if(textscanning) const CircularProgressIndicator(),
                if(!textscanning && ImageFile == null)
                  Container(
                  width: 300,
                  height: 300,
                  color: Colors.grey[300]!,
                ),

                if(ImageFile != null)
                  Image.file(File(ImageFile!.path)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.grey,
                          shadowColor: Colors.grey[400],
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ), onPressed: () {
                          getImage();},

                        child: Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.image, size: 30,),
                            Text("Gallery", style: TextStyle(fontSize: 13, color: Colors.grey[500]),),
                          ],
                        ),
                      ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.grey,
                          shadowColor: Colors.grey[400],
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ), onPressed: () {  }, child: Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.camera_enhance, size: 30,),
                            Text("Camera", style: TextStyle(fontSize: 13, color: Colors.grey[500]),),
                          ],
                        ),
                      ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40,),
                Container(
                  child: Text(scannedText, style: TextStyle(fontSize: 40)),
                )
              ],
            ),
             // SizedBox(height: 50),
             // imageFile != null ?
             //     Container(
             //       child: Image.file(imageFile!),
             //     ):

                 // Container(,
                 //   child: Icon(
                 //     Icons.camera_enhance_rounded,
                 //     color: Colors.black45,
                 //     size: MediaQuery.of(context).size.width * .6,
                 //   ),
                 // ),

             // Padding(
             //   padding: const EdgeInsets.all(30),
             // child: ElevatedButton(
             //   child: Text('Capture Image'),
             //   onPressed: (){
             //     _getFromCamera();
             //   },
             //   style: ButtonStyle(
             //     padding: MaterialStateProperty.all(EdgeInsets.all(12)),
             //
             //   ),
             // ),
             // ),
         //     SizedBox(height: 20),
         //     TextField(
         //       onChanged: (value) {
         //        url = 'http://41d5-35-234-2-165.ngrok.io/predict' + value.toString();
         //       },
         //     ),
         //     TextButton(onPressed: ()async{
         //       data = await fetchdata(url);
         //       var decoded = jsonDecode(data);
         //        setState(() {
         //          output = decoded['The rate is'];
         //        });
         //     }, child: Text("Predict")),
         //     Text(output)
         //   ],
         // ),
       ),),
       );
   }

   void getImage() async {
     try {
       final pickedimage = await ImagePicker().pickImage(source: ImageSource.gallery);
       if(pickedimage != null) {
         textscanning = true;
         ImageFile = pickedimage;
         setState(() {});
         getRecongnisedText(pickedimage);
       }
     }catch (e) {
       textscanning = false;
       ImageFile = null;
       setState(() {});
       scannedText = "Error occured while scanning";
     }
   }

   void getRecongnisedText(XFile image) async{
     final inputImage = InputImage.fromFilePath(image.path);
     final textDetector = GoogleMlKit.vision.textDetector();
     RecognisedText recognisedText = await textDetector.processImage(inputImage);
     await textDetector.close();
     scannedText = "";
     for (TextBlock block in recognisedText.blocks) {
       for (TextLine line in block.lines) {
         scannedText = scannedText + line.text + "\n";
       }
     }
     textscanning = false;
     setState(() {

     });
   }

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

}
