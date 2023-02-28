import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'profileScreen.dart';
import 'postsFeed.dart';
import 'settings.dart';

class uploadPost extends StatefulWidget {
  uploadPost({super.key});

  @override
  State<uploadPost> createState() => _uploadPostState();
}

class _uploadPostState extends State<uploadPost> {
  InputDecoration optionsDecoration({required String hintText}) {
    return InputDecoration(
      filled: true,
      fillColor: const Color.fromARGB(255, 28, 27, 31),
      contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      hintText: 'Option ' + hintText,
      hintStyle:
          TextStyle(fontSize: 16, color: Color.fromARGB(255, 157, 157, 157)),
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: 1, color: Color.fromARGB(255, 157, 157, 157)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: 2.5, color: Color.fromARGB(255, 130, 46, 156)),
      ),
    );
  }

  final ButtonStyle uploadButton = ElevatedButton.styleFrom(
    //creating a style for the upload button
    minimumSize: const Size(0, 50),
    backgroundColor: const Color(0xff6750a4),
    elevation: 4,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
    ),
  );

  File _image = File('assets/default.png');

  Future<void> getImage(bool isCamera) async {
    XFile? image = XFile('assets/default.png');
    if (isCamera) {
      image = await ImagePicker().pickImage(source: ImageSource.camera);
    } else {
      image = await ImagePicker().pickImage(source: ImageSource.gallery);
    }
    setState(() {
      _image = image != null ? File(image.path) : File('assets/default.png');
    });
  }

  @override
  Widget build(BuildContext context) {
    double femm = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/electlogo2.png'),
                //fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: 40,
          )),
          leading: IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
          backgroundColor: Color(0xff1c1b1f),
          elevation: 4.0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Settings()));
              },
            ),
          ],
        ),
        body: Column(children: [
          Expanded(
              child: Stack(
                  clipBehavior: Clip.hardEdge,
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                /*
                _image.path != null
                    ? Image.file(
                        File(_image.path),
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      )
                    : Container(),
                    */
                Image.asset(
                  'assets/default.png',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // Here is camera icon
                Container(
                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: () {
                      getImage(true);
                    },
                    icon: Icon(Icons.add_a_photo_outlined,
                        size: 32, color: Color.fromARGB(255, 28, 27, 31)),
                  ),
                ),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 24, 23, 23).withOpacity(0.4),
                  ),
                  child: const TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: null,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 2.5,
                            color: Color.fromARGB(255, 130, 46, 156)),
                      ),
                      hintText: 'What is your dilemma?', // Set the hintText
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                // Here is local file upload
                Container(
                    margin: const EdgeInsets.all(10.0),
                    alignment: Alignment.topLeft,
                    child: Row(children: [
                      IconButton(
                          onPressed: () {
                            getImage(false);
                          },
                          icon: Icon(Icons.add_photo_alternate,
                              size: 32,
                              color: Color.fromARGB(255, 28, 27, 31))),
                    ])),
              ])),
          Container(
            decoration: const BoxDecoration(
              color: const Color.fromARGB(255, 28, 27, 31),
            ),
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 30, right: 30, top: 30, bottom: 25),
                    child: TextField(
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 157, 157, 157)),
                      maxLines: null,
                      decoration: optionsDecoration(hintText: '1'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 30, right: 30, top: 0, bottom: 30),
                    child: TextField(
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 157, 157, 157)),
                      maxLines: null,
                      decoration: optionsDecoration(hintText: '2'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 30, right: 30, top: 6, bottom: 30),
                    child: ElevatedButton(
                      style: uploadButton,
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Feed()));
                      },
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          child: const Text('Upload', style: TextStyle())),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
