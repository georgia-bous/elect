// ignore_for_file: avoid_init_to_null

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyCustomScrollBehavior extends MaterialScrollBehavior { // this exists so we can scroll posts using the mouse
  @override
  Set<PointerDeviceKind> get dragDevices => { 
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,   
  };
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) { 
    final PageController controller = PageController();
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 40,
          child: Center(
            child: Image.asset('electlogo2.png'),
            ),
        ),
        backgroundColor: const Color(0xff1c1b1f),
        elevation: 4.0,
        leading: IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // handle account action
            },
          ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // handle options action
            },
          ),
        ],
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        scrollBehavior: MyCustomScrollBehavior().copyWith(scrollbars: false),
        controller: controller,
        children:  const [
          ElectPost(avatar: 'user_picture_1.png', dilemma: 'What would you choose?', option1: 'Run', option2: 'Gun', postImage: 'post_image_1.png', username: 'Yvonne'),
          ElectPost(avatar: 'user_picture_1.png', dilemma: 'What is your choice?', option1: 'Fight', option2: 'Flight', postImage: 'post_image_1.png', username: 'Takis'),
          ElectPost(avatar: 'user_picture_1.png', dilemma: 'What will it be?', option1: 'Smash', option2: 'Gas', postImage: 'post_image_1.png', username: 'Vrasidas'),       
        ]
      ),
    );
  }
}

class ElectPost extends StatefulWidget {
  const ElectPost({super.key, required this.option1, required this.option2, required this.dilemma, required this.postImage, required this.username, required this.avatar});

  final String option1;
  final String option2;
  final String dilemma;
  final String postImage;
  final String username;
  final String avatar;

  @override
  State<ElectPost> createState() => _ElectPostState();
}

class _ElectPostState extends State<ElectPost> {
  final ButtonStyle optionsButton = ElevatedButton.styleFrom(       //creating a style for the option buttons
    minimumSize: const Size(0, 50),
    disabledBackgroundColor: const Color.fromARGB(255, 235, 163, 250),
    backgroundColor:  const Color.fromARGB(255, 130, 46, 156),
    elevation: 4,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
    ), 
  );

  bool vote1 = false;
  bool vote2 = false;

  @override
  Widget build(BuildContext context) {

  var onPressedButton1 = null;
  var onPressedButton2 = null;

  if (!vote2) {
    onPressedButton2 = () {
      setState(() {
        vote1 = false;
        vote2 = true;
      });
    };
  }

  if (!vote1) {
    onPressedButton1 = () {
      setState(() {
        vote1 = true;
        vote2 = false;
      });
    };
  }  

    return(
      Column(
        
        children: [
          Expanded(
            child: Stack(
              clipBehavior: Clip.hardEdge,
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                
                Image.asset(widget.postImage,
                  height: double.infinity,
                  width: double.infinity, 
                  fit: BoxFit.cover,
                ),  

                Container(                 
                  width: double.infinity,                 
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 24, 23, 23).withOpacity(0.4),
                  ),
                  child: Text(
                    widget.dilemma,                                       
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ), 

                Container(
                  margin: const EdgeInsets.all(10.0),
                  alignment: Alignment.topLeft,                
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(widget.avatar),
                      ),
                      Text('  ${widget.username}', 
                        style: const TextStyle(
                          fontWeight: FontWeight.bold, 
                          fontSize: 20, 
                          color: Colors.white,
                          shadows: [
                            Shadow( // bottom right
                              offset: Offset(1.5, 1.5),
                              color: Colors.black,
                            ),
                          ]
                        )
                      ),
                    ]
                  )
                ),
              ]             
            ),
          ),      
          Container(              
            decoration: const BoxDecoration(
              color:  Color.fromARGB(255, 14, 13, 15),
            ),
            child: Center(
              
              child: Column(
                children: [
                  
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: ElevatedButton ( 
                      style: optionsButton,
                      onPressed: onPressedButton1,                
                      child: Container(width: double.infinity, padding: const EdgeInsets.all(10), child: Text(widget.option1,style: const TextStyle())),
                    ),
                      
                  ),
                  
                  Container(
                    margin: const EdgeInsets.only(left: 30, right:30, bottom:30),
                    child: ElevatedButton (    
                      style: optionsButton,
                      onPressed: onPressedButton2,
                      child: Container(width: double.infinity, padding: const EdgeInsets.all(10), child: Text(widget.option2,style: const TextStyle())),
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

