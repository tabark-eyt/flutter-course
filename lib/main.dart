/// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets, which means it defaults to [BottomNavigationBarType.fixed], and
// the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
class Insta {
  String avater;
  String name;
  String image;
  String likes;


  Insta(this.avater, this.name,this.image, this.likes);
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Widget buildIGCard(Insta _insta) {
    var imageUrl = _insta.image;

    return Container(
      // color: Color(0xff162f5a),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 6),
          color:  Color(0xff393c4b)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [

                CircleAvatar(
                  backgroundImage: NetworkImage(_insta.avater),
                ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  _insta.name,

                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),

                ),
              ),
              Expanded(
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.white,
                  size: 45,
                ),
              ),
            ],
          ),
          Image.network(
            imageUrl,
            height: 300,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_insta.likes, style: TextStyle(
                color: Colors.white, fontSize: 30,
                fontWeight: FontWeight.w800
            ),),
          ),
        ],
      ),
    );
  }
  Widget buildInstaDetail() {

    return Container(
      // color: Color(0xff162f5a),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 6),
          color:  Color(0xff393c4b)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [

              CircleAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/301'),
                minRadius: 50,
                maxRadius: 50,
              ),
              Expanded(
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.all(7),
                child: Text(
                  '55 posts',

                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7),
                child: Text(
                  '55 posts',

                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7),
                child: Text(
                  '110 following',

                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),

                ),
              ),
            ],
          ),
          Divider(thickness: 3,),
          Padding(
            padding: const EdgeInsets.all(2),
            child: Text(
              'Tabark Emad',

              style: const TextStyle( color: Colors.white, fontSize: 14.0),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: Text(
              'Iraq/Baghdad',

              style: const TextStyle( color: Colors.white, fontSize: 14.0),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: Text(
              '28 years old',

              style: const TextStyle( color: Colors.white, fontSize: 14.0),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: Text(
              'thougts become things',

              style: const TextStyle( color: Colors.white, fontSize: 14.0),

            ),
          ),
          Divider(thickness: 3),


    GridView(
    scrollDirection: Axis.vertical,           //default
    reverse: false,                           //default
    controller: ScrollController(),
    primary: false,

    shrinkWrap: true,
    padding: EdgeInsets.all(5.0),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    mainAxisSpacing: 5.0,
    crossAxisSpacing: 5.0,
    ),
    /* gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 125,
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 5.0),*/
    addAutomaticKeepAlives: true,             //default
    addRepaintBoundaries: true,               //default
    addSemanticIndexes: true,                 //default
    semanticChildCount: 0,
    cacheExtent: 0.0,
    clipBehavior: Clip.hardEdge,
    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
    children: [
      Image.network(
        'https://i.pravatar.cc/303',
        height: 300,
        width: double.maxFinite,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://i.pravatar.cc/304',
        height: 300,
        width: double.maxFinite,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://i.pravatar.cc/305',
        height: 300,
        width: double.maxFinite,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://i.pravatar.cc/306',
        height: 300,
        width: double.maxFinite,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://i.pravatar.cc/307',
        height: 300,
        width: double.maxFinite,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://i.pravatar.cc/308',
        height: 300,
        width: double.maxFinite,
        fit: BoxFit.cover,
      ),

    ]                     // List of Widgets
    ),





        ],
      ),
    );
  }


  int _selectedIndex = 2;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static late List<Widget> _pages;

  _MyStatefulWidgetState() {
    _pages = [
      buildInstaList(),
      buildInstaProfile(),
      // Text('hello'),
      Text(
        'Index 2: setting',
        style: optionStyle,
      ),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  var insta = [
    Insta(
      'https://i.pravatar.cc/301',
      'ali ahmed',
      'https://i.pravatar.cc/300',
      '25 Likes',
    ),
    Insta(
      'https://i.pravatar.cc/300',
      'yousif hasan',
      'https://i.pravatar.cc/301',
      '22 Likes' ,

    ),
    Insta(
      'https://i.pravatar.cc/307',
      'noor mohamed',
      'https://i.pravatar.cc/302',
      '37 Likes',

    ),
    Insta(
      'https://i.pravatar.cc/305',
      'ali mohamed',
      'https://i.pravatar.cc/303',
      '40 Likes',

    ),

  ];
  Widget buildInstaList() {
    return ListView.builder(
      itemBuilder: (_context, index) {
        return buildIGCard(insta[index]);
      },
      itemCount: insta.length,
    );
  }
  Widget buildInstaProfile() {

        return buildInstaDetail();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram page'),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
