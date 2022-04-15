import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ui kits',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BottomBarItem item = BottomBarItem.discover;
  @override
  Widget build(BuildContext context) {
    // TODO: implement change view according to item's value
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomBar(
            onTap: (status) => setState(() => item = status),
          ),
          backgroundColor: Colors.white,
          // appBar: Header(), use this for sticky header
          body: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const Header(),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 8),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 178,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              decoration: BoxDecoration(
                                // color: Colors.red,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 2,
                                    spreadRadius: 0,
                                    offset: const Offset(3, 3),
                                  ),
                                ],
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Container(
                                      child: Image.network(
                                        "https://picsum.photos/200/300",
                                        fit: BoxFit.fill,
                                      ),
                                      decoration: const BoxDecoration(
                                        // color: Colors.red,

                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                      width: 170,
                                      height: 260,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(2),
                                          ),
                                          color: Colors.grey.withOpacity(.8),
                                        ),
                                        padding: const EdgeInsets.all(2),
                                        margin: const EdgeInsets.all(8),
                                        child: const Text(
                                          "watch",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              "based on your rate for interstellar",
                              overflow: TextOverflow.clip,
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 10,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
                    child: Text(
                      "For you",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 8),
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 150,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Container(
                                  decoration: BoxDecoration(
                                    // color: Colors.red,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 2,
                                        spreadRadius: 0,
                                        offset: const Offset(3, 3),
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Container(
                                          child: Image.network(
                                            "https://picsum.photos/200/300",
                                            fit: BoxFit.fill,
                                          ),
                                          decoration: const BoxDecoration(
                                            // color: Colors.red,

                                            borderRadius: BorderRadius.all(
                                              Radius.circular(8),
                                            ),
                                          ),
                                          width: 140,
                                          height: 210,
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(2),
                                              ),
                                              color:
                                                  Colors.grey.withOpacity(.8),
                                            ),
                                            padding: const EdgeInsets.all(2),
                                            margin: const EdgeInsets.all(8),
                                            child: const Text(
                                              "watch",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  "based on your rate for interstellar",
                                  overflow: TextOverflow.clip,
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum BottomBarItem {
  discover,
  watch,
  add,
  popular,
  profile,
}

class BottomBar extends StatefulWidget {
  final Function(BottomBarItem) onTap;
  const BottomBar({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;
  BottomBarItem barStatus = BottomBarItem.discover;
  bool currentBarStatus(BottomBarItem item) => (barStatus == item);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: kBottomNavigationBarHeight,
          width: double.infinity,
          color: Colors.white.withOpacity(.4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                splashRadius: 8,
                icon: Icon(
                  CupertinoIcons.compass_fill,
                  color: !currentBarStatus(BottomBarItem.discover)
                      ? Colors.grey
                      : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    barStatus = BottomBarItem.discover;
                    widget.onTap(barStatus);
                  });
                },
              ),
              IconButton(
                splashRadius: 8,
                icon: Icon(
                  CupertinoIcons.tv,
                  color: !currentBarStatus(BottomBarItem.watch)
                      ? Colors.grey
                      : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    barStatus = BottomBarItem.watch;
                    widget.onTap(barStatus);
                  });
                },
              ),
              IconButton(
                splashRadius: 8,
                icon: Icon(
                  CupertinoIcons.add_circled_solid,
                  color: !currentBarStatus(BottomBarItem.add)
                      ? Colors.grey
                      : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    barStatus = BottomBarItem.add;
                    widget.onTap(barStatus);
                  });
                },
              ),
              IconButton(
                splashRadius: 8,
                icon: Icon(
                  CupertinoIcons.bolt_fill,
                  color: !currentBarStatus(BottomBarItem.popular)
                      ? Colors.grey
                      : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    barStatus = BottomBarItem.popular;
                    widget.onTap(barStatus);
                  });
                },
              ),
              const CircleAvatar(
                backgroundColor: Colors.red,
                radius: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Movies',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Popular now',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Center(
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
