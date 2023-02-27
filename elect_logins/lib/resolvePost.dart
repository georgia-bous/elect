import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'profileScreen.dart';
import 'postsFeed.dart';
import 'settings.dart';

class resolvePost extends StatefulWidget {
  resolvePost({super.key});

  @override
  State<resolvePost> createState() => _resolvePostState();
}

class _resolvePostState extends State<resolvePost> {

  final ButtonStyle uploadButton = ElevatedButton.styleFrom(       //creating a style for the upload button
    minimumSize: const Size(0, 50),
    backgroundColor:  const Color(0xff6750a4),
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
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Feed()));
            },
            child: Image.asset('electlogo2.png',
            width: double.infinity,
            height: femm / 20,),
          )
        ),
        backgroundColor: const Color.fromARGB(255, 28, 27, 31),
        elevation: 4.0,
        leading: IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Settings()));
            }
          ),
        ],
      ),
    body: 
      Column(
        children: [
          Expanded(
            child: Stack(
              clipBehavior: Clip.hardEdge,
              alignment: AlignmentDirectional.bottomCenter,
              children: [

                // Resolve post image 
                _image != null ? Image.network(_image.path, 
                                              height: double.infinity, 
                                              width: double.infinity, 
                                              fit: BoxFit.cover,) : Container(), 

                // Image of dilemma post
                Container(
                  alignment: Alignment(0.91, -0.85),
                  child: CircleAvatar(
                    radius: 45.0,
                    backgroundImage: AssetImage('dilemmaUpload.jpg'),
                  )
                ),

                // Camera icon
                Container(
                  alignment: Alignment.center, 
                  child: IconButton(
                    onPressed: () {
                      getImage(true);
                    }, 
                    icon: Icon(Icons.add_a_photo_outlined, size: 32, color: Color.fromARGB(255, 28, 27, 31)),
                  ),
                
                ),

                // Local file upload icon
                Container(
                  alignment: Alignment.topLeft,                
                  child: IconButton(
                      onPressed: () {
                        getImage(false);
                      }, 
                      icon: Icon(Icons.add_photo_alternate, size: 32, color: Color.fromARGB(255, 28, 27, 31))
                    ),
                ),
                
                // Dilemma question
                Container(                 
                  width: double.infinity,                 
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 24, 23, 23).withOpacity(0.4),
                  ),
                  child: const Text(
                    "I'm bored.. What should I do today?",                                       
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ), 
              ]             
            ),
          ), 

          // Here is the option-uploadButton box 
          Container(              
            decoration: const BoxDecoration(
              color:  const Color.fromARGB(255, 28, 27, 31),
            ),
            child: Center(
              child: Column(
                children: [

                  // Option 1 
                  Container(
                    width: double.infinity,   
                    height: 45,            
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),  
                    margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), 
                      color: Color.fromARGB(255, 130, 46, 156), 
                    ), 
                    child: 
                      Align(alignment: Alignment.centerLeft, child: Text('Go to the beach!',style: TextStyle(color: Colors.white))),
                  ),

                  // Option 2
                  Container(
                  width: double.infinity, 
                  height: 45,            
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  margin: EdgeInsets.only(left: 30, right: 30, top:0, bottom: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), 
                    color: Color.fromARGB(255, 18, 18, 19),
                  ), 
                  child: 
                    Align(alignment: Alignment.centerLeft, child: Text('Netflix is always the answer', style: TextStyle(color: Color.fromARGB(255, 130, 46, 156)))),
                  ),

                  // Upload button
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30, top: 6, bottom: 30),
                    child: ElevatedButton (
                      
                      style: uploadButton,
                      onPressed: () {
                        Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => Feed()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10), 
                        child: const Text('Upload', style: TextStyle())
                        ),
                    ),
                  ),
                ],
              ),
            ),           
          ),         
        ]
      )
    );
  }
}