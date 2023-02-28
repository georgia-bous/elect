import 'dart:ui';
import 'package:flutter/material.dart';
import 'profileScreen.dart';
import 'settings.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // this exists so we can scroll posts using the mouse
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class Feed extends StatefulWidget {
  Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    double femm = MediaQuery.of(context).size.height;
    final PageController controller = PageController();
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
        backgroundColor: const Color(0xff1c1b1f),
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
              }),
        ],
      ),
      body: PageView(
          scrollDirection: Axis.vertical,
          scrollBehavior: MyCustomScrollBehavior().copyWith(scrollbars: false),
          controller: controller,
          children: const [
            ElectResolutionPost(
                key: ValueKey(1),
                avatar: 'assets/user1.jpg',
                dilemma: 'Found this little one',
                option1: 'Adopt the kitten!',
                option2: 'Let is go',
                postImage: 'assets/postResolved.jpg',
                username: 'Yvonne',
                winningOption: 1,
                comments: 42,
                likes: 397),
            ElectPost(
                key: ValueKey(1),
                avatar: 'assets/user2.jpg',
                dilemma: 'New Nike shoes just dropped',
                option1: 'Cop',
                option2: 'Drop',
                postImage: 'assets/post1.jpg',
                username: 'Mike'),
            ElectPost(
                key: ValueKey(2),
                avatar: 'assets/user3.jpg',
                dilemma: 'Where to next?',
                option1: 'Morocco',
                option2: 'Egypt',
                postImage: 'assets/post2.jpg',
                username: 'Ken'),
            ElectPost(
                key: ValueKey(3),
                avatar: 'assets/user4.jpg',
                dilemma: 'Main course?',
                option1: 'Meat',
                option2: 'Fish',
                postImage: 'assets/post3.jpg',
                username: 'Mila'),
          ]),
    );
  }
}

class ElectPost extends StatefulWidget {
  const ElectPost(
      {Key? key,
      required this.option1,
      required this.option2,
      required this.dilemma,
      required this.postImage,
      required this.username,
      required this.avatar})
      : super(key: key);

  final String option1;
  final String option2;
  final String dilemma;
  final String postImage;
  final String username;
  final String avatar;

  @override
  State<ElectPost> createState() => _ElectPostState();
}

class _ElectPostState extends State<ElectPost>
    with AutomaticKeepAliveClientMixin<ElectPost> {
  final ButtonStyle optionsButton = ElevatedButton.styleFrom(
    //creating a style for the option buttons
    minimumSize: const Size(0, 50),
    disabledBackgroundColor: const Color.fromARGB(255, 235, 163, 250),
    backgroundColor: const Color.fromARGB(255, 130, 46, 156),
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

    return (Column(children: [
      Expanded(
        child: Stack(
            clipBehavior: Clip.hardEdge,
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Image.asset(
                widget.postImage,
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
                  child: Row(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.avatar),
                    ),
                    Text('  ${widget.username}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                // bottom right
                                offset: Offset(1.5, 1.5),
                                color: Colors.black,
                              ),
                            ])),
                  ])),
            ]),
      ),
      Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 28, 27, 31),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(30),
                child: ElevatedButton(
                  style: optionsButton,
                  onPressed: onPressedButton1,
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: Text(widget.option1, style: const TextStyle())),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
                child: ElevatedButton(
                  style: optionsButton,
                  onPressed: onPressedButton2,
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: Text(widget.option2, style: const TextStyle())),
                ),
              ),
            ],
          ),
        ),
      ),
    ]));
  }

  @override
  bool get wantKeepAlive => true;
}

class ElectResolutionPost extends StatefulWidget {
  const ElectResolutionPost(
      {Key? key,
      required this.option1,
      required this.option2,
      required this.dilemma,
      required this.postImage,
      required this.username,
      required this.avatar,
      required this.winningOption,
      required this.likes,
      required this.comments})
      : super(key: key);

  final String option1;
  final String option2;
  final String dilemma;
  final String postImage;
  final String username;
  final String avatar;
  final int winningOption;
  final int likes;
  final int comments;

  @override
  State<ElectResolutionPost> createState() => _ElectResolutionPostState();
}

class _ElectResolutionPostState extends State<ElectResolutionPost>
    with AutomaticKeepAliveClientMixin<ElectResolutionPost> {
  final ButtonStyle optionsButton = ElevatedButton.styleFrom(
    //creating a style for the option buttons
    minimumSize: const Size(0, 50),
    disabledForegroundColor: const Color.fromARGB(255, 174, 72, 241),
    disabledBackgroundColor: Color.fromARGB(255, 18, 18, 19),
    backgroundColor: const Color.fromARGB(255, 130, 46, 156),
    elevation: 4,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
    ),
  );

  bool liked = false;

  @override
  Widget build(BuildContext context) {
    var option1voted;
    var option2voted;

    if (widget.winningOption == 1) {
      option1voted = () {};
    }
    if (widget.winningOption == 2) {
      option2voted = () {};
    }

    return (Column(children: [
      Expanded(
        child: Stack(
            clipBehavior: Clip.hardEdge,
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Image.asset(
                widget.postImage,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          iconSize: 35,
                          color: Colors.red,
                          icon: liked
                              ? const Icon(Icons.favorite)
                              : const Icon(Icons.favorite_border),
                          onPressed: () {
                            setState(() {
                              liked = !liked;
                            });
                          },
                        ),
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            iconSize: 35,
                            color: Colors.white,
                            icon: const Icon(Icons.comment),
                            onPressed: () {} // comments icon functionless :(
                            ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 24, 23, 23)
                          .withOpacity(0.4),
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
                ],
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  alignment: Alignment.topLeft,
                  child: Row(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.avatar),
                    ),
                    Text('  ${widget.username}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                // bottom right
                                offset: Offset(1.5, 1.5),
                                color: Colors.black,
                              ),
                            ])),
                  ])),
            ]),
      ),
      Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 28, 27, 31)),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(30),
                child: ElevatedButton(
                  style: optionsButton,
                  onPressed: option1voted,
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: Text(widget.option1, style: const TextStyle())),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
                child: ElevatedButton(
                  style: optionsButton,
                  onPressed: option2voted,
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: Text(widget.option2, style: const TextStyle())),
                ),
              ),
            ],
          ),
        ),
      ),
    ]));
  }

  @override
  bool get wantKeepAlive => true;
}
