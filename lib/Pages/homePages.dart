import 'package:flutter/material.dart';
import 'package:gskedu/Pages/home.dart';
import 'package:gskedu/Pages/homePages.dart';
import 'package:gskedu/Pages/loginandregister.dart';
import 'package:gskedu/Pages/about.dart';
import 'package:gskedu/Pages/loginandregister.dart';
import 'profile.dart';

class HomePages extends StatefulWidget {

  final int parentId;

  const HomePages({Key key, this.parentId}) : super(key: key);
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int _currentIndex = 0;
  Widget GetPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return Home(parentId2: widget.parentId,);
      case 1:
        return Profile();
      case 2:
        return About();

        // case 2:
        //   About();

        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginAndRegister(),
                  ));
            },
          ),
          title: Text("GSK EDU"),
          backgroundColor: Colors.green[400],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (value) {
            _currentIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("الرئيسيه")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("البروفايل")),
            BottomNavigationBarItem(
                icon: Icon(Icons.info_outline), title: Text("عن التطبيق")),
            // BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("3")),
          ],
        ),
        body: GetPage(_currentIndex),
      ),
    );
  }
}
