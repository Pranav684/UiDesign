import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        leading: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            // margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.black,
            ),
            child: ClipOval(
              child: Image(
                colorBlendMode: BlendMode.color,
                image: AssetImage('assets/images/p2.jpg'),
              ),
            ),
          ),
        ),
        title: Text("Feeds",
            style: TextStyle(
              color: Colors.black,
            )),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.add,
                  size: 26.0,
                  color: Colors.black,
                ),
              )),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.mail,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 70,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(15),
                      height: 35,
                      width: 120,
                      child: Text(
                        "#Trending",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Tags("#Foods"),
                    Tags("#Activities"),
                    Tags("#Shopping"),
                    Tags("#Selfies"),
                  ]),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              const SizedBox(
                height: 735,
                child: Image(
                  image: AssetImage('assets/images/0001.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 735,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Content('assets/images/p2.jpg'),
                        Content('assets/images/p3.jpg'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Content('assets/images/p1.jpg'),
                        Content('assets/images/p2.jpg'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Content('assets/images/p1.jpg'),
                        Content('assets/images/p3.jpg'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Content('assets/images/p2.jpg'),
                        Content('assets/images/p3.jpg'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            flex: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(10),
                height: 73,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 122, 1, 143),
                        Colors.pink,
                      ]),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.blur_circular_outlined,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.check_circle_outline,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container Content(String img) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(18)),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18.0),
            child: Image(
              image: AssetImage(
                img,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Pranav Srivastava',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Dare Accepted'),
                    Text(
                      '23 hr ago',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                Container(
                  // margin: EdgeInsets.all(5),
                  height: 25,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image(
                      image: AssetImage(img),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container Tags(String name) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(15),
      height: 35,
      width: 120,
      child: Text(
        name,
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          color: Colors.red,
        ),
      ),
    );
  }
}
