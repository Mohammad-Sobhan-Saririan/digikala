import 'package:digikala/digitalproducts.dart';
import 'package:digikala/product_details.dart';
import 'package:digikala/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'pagepruduct.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8c6aad),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: Text("List Of Products", style: TextStyle(wordSpacing: 2, fontSize: 20)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pages_outlined),
          label: 'Town',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
      ],
      unselectedItemColor: Colors.teal,
      // currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      // onTap: _onItemTapped,
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Container(
                  child : Column(
                    children: [
                      ProductDetails("images/applelogo.png","Mobile\niphone\npro max","ProductDetails"),
                      ProductDetails("images/applelogo.png","Mobile\niphone\npro max","ProductDetails"),
                      ProductDetails("images/applelogo.png","Mobile\niphone\npro max","ProductDetails"),
                      ProductDetails("images/applelogo.png","Mobile\niphone\npro max","ProductDetails"),
                      ProductDetails("images/applelogo.png","Mobile\niphone\npro max","ProductDetails"),
                      ProductDetails("images/applelogo.png","Mobile\niphone\npro max","ProductDetails"),

                    ],
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//
//   void _openEndDrawer() {
//     _scaffoldKey.currentState!.openEndDrawer();
//   }
//
//   void _closeEndDrawer() {
//     Navigator.of(context).pop();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(title: const Text('Drawer Demo')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _openEndDrawer,
//           child: const Text('Open End Drawer'),
//         ),
//       ),
//       endDrawer: Drawer(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text('This is the Drawer'),
//               ElevatedButton(
//                 onPressed: _closeEndDrawer,
//                 child: const Text('Close Drawer'),
//               ),
//             ],
//           ),
//         ),
//       ),
//       // Disable opening the end drawer with a swipe gesture.
//       endDrawerEnableOpenDragGesture: false,
//     );
//   }
// }

//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   bool _lightIsOn = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         alignment: FractionalOffset.center,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Icon(
//                 Icons.lightbulb_outline,
//                 color: _lightIsOn ? Colors.yellow.shade600 : Colors.black,
//                 size: 60,
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 setState(() {
//                   // Toggle light when tapped.
//                   _lightIsOn = !_lightIsOn;
//                 });
//               },
//               child: Container(
//                 color: Colors.yellow.shade600,
//                 padding: const EdgeInsets.all(8),
//                 // Change button text when light changes state.
//                 child: Text(_lightIsOn ? 'TURN LIGHT OFF' : 'TURN LIGHT ON'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   Color _color = Colors.white;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: _color,
//       height: 200.0,
//       width: 200.0,
//       child: GestureDetector(
//         onTap: () {
//           setState(() {
//             _color == Colors.yellow
//                 ? _color = Colors.white
//                 : _color = Colors.yellow;
//           });
//         },
//       ),
//     );
//   }
// }

// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);
//
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   bool _pinned = true;
//   bool _snap = false;
//   bool _floating = false;
//
// // [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// // turn can be placed in a [Scaffold.body].
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             pinned: _pinned,
//             snap: _snap,
//             floating: _floating,
//             expandedHeight: 160.0,
//             flexibleSpace: const FlexibleSpaceBar(
//               title: Text('SliverAppBar'),
//               background: FlutterLogo(),
//             ),
//           ),
//           const SliverToBoxAdapter(
//             child: SizedBox(
//               height: 20,
//               child: Center(
//                 child: Text('Scroll to see the SliverAppBar in effect.'),
//               ),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//                   (BuildContext context, int index) {
//                 return Container(
//                   color: index.isOdd ? Colors.white : Colors.black12,
//                   height: 100.0,
//                   child: Center(
//                     child: Text('$index', textScaleFactor: 5),
//                   ),
//                 );
//               },
//               childCount: 20,
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Padding(
//           padding: const EdgeInsets.all(8),
//           child: OverflowBar(
//             overflowAlignment: OverflowBarAlignment.center,
//             children: <Widget>[
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   const Text('pinned'),
//                   Switch(
//                     onChanged: (bool val) {
//                       setState(() {
//                         _pinned = val;
//                       });
//                     },
//                     value: _pinned,
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   const Text('snap'),
//                   Switch(
//                     onChanged: (bool val) {
//                       setState(() {
//                         _snap = val;
//                         // Snapping only applies when the app bar is floating.
//                         _floating = _floating || _snap;
//                       });
//                     },
//                     value: _snap,
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   const Text('floating'),
//                   Switch(
//                     onChanged: (bool val) {
//                       setState(() {
//                         _floating = val;
//                         _snap = _snap && _floating;
//                       });
//                     },
//                     value: _floating,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    //Screen1(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Summer',
      style: optionStyle,
    ),
    Text(
      'Index 3: Summer',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages_outlined),
            label: 'Town',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        unselectedItemColor: Colors.teal,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

// void main() {
//   runApp(new MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Flutter Demo',
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: new MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   ScrollController _hideButtonController;
//
//   var _isVisible;
//   @override
//   initState() {
//     super.initState();
//     _isVisible = true;
//     _hideButtonController = new ScrollController();
//     _hideButtonController.addListener(() {
//       if (_hideButtonController.position.userScrollDirection ==
//           ScrollDirection.reverse) {
//         if(_isVisible)
//           setState(() {
//             _isVisible = false;
//             print("**** $_isVisible up");
//           });
//       }
//       if (_hideButtonController.position.userScrollDirection ==
//           ScrollDirection.forward) {
//         if(!_isVisible)
//           setState(() {
//             _isVisible = true;
//             print("**** $_isVisible down");
//           });
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text(widget.title),
//       ),
//       body: new Center(
//           child: new CustomScrollView(
//             controller: _hideButtonController,
//             shrinkWrap: true,
//             slivers: <Widget>[
//               new SliverPadding(
//                 padding: const EdgeInsets.all(20.0),
//                 sliver: new SliverList(
//                   delegate: new SliverChildListDelegate(
//                     <Widget>[
//                       const Text('I\'m dedicating every day to you'),
//                       const Text('Domestic life was never quite my style'),
//                       const Text('When you smile, you knock me out, I fall apart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('And I thought I was so smart'),
//                       const Text('I realize I am crazy'),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           )),
//       bottomNavigationBar: AnimatedContainer(
//         duration: Duration(milliseconds: 500),
//         height: _isVisible ? 60.0 : 0.0,
//         child: _isVisible
//             ? new BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           items: [
//             new BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             new BottomNavigationBarItem(
//               icon: Icon(Icons.card_giftcard),
//               label: 'Offers',
//             ),
//             new BottomNavigationBarItem(
//               icon: Icon(Icons.account_box),
//               label: 'Account',
//             ),
//           ],
//           currentIndex: 0,
//
//         )
//             : Container(
//           color: Colors.white,
//           width: MediaQuery.of(context).size.width,
//         ),
//       ),
//
//     );
//   }
//
// }