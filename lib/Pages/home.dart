import 'package:flutter/material.dart';
import 'package:gskedu/Pages/studentDashboard.dart';
import 'package:gskedu/myDbFunction.dart';
import 'package:odoo_api/odoo_user_response.dart';

class Home extends StatefulWidget {
  final int parentId2;

  const Home({Key key, this.parentId2}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

var darkGreenColor = Color(0xff279152);

class _HomeState extends State<Home> {
  // ================================================================================================================
  var model = 'res.partner';
  var fields = ['child_ids'];
  
  Future getStudentData() async {
    
    var domain = [['id','=','${widget.parentId2}']];
    
    var readData = await odooSearchRead(model, domain, fields);

    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => StudentDashbord(),
    //     ));

    var stdIds = readData['records'][0]['child_ids'];
    
  }

  // ================================================================================================================
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
          // backgroundColor: Colors.green[400],
          // appBar: AppBar(
          //   backgroundColor: Colors.green[400].withOpacity(0.8),
          //   // backgroundColor: Colors.transparent,
          //   title: Text(" تطبيق GSK EDU "),
          // ),

          // bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.green[300],currentIndex: 0,items: [
          //     BottomNavigationBarItem(title: Text("خروج",style: TextStyle(color: Colors.white),),icon: Icon(Icons.exit_to_app,color: Colors.white,)),
          //     BottomNavigationBarItem(title: Text("البروفايل",style: TextStyle(color: Colors.white),),icon: Icon(Icons.person,color: Colors.white,)),
          //     BottomNavigationBarItem(title: Text("الرئيسيه",style: TextStyle(color: Colors.white)),icon: Icon(Icons.home,color: Colors.white,)),

          // ],),

          // drawer: Drawer(

          //   child: ListView(
          //     children: <Widget>[
          //       UserAccountsDrawerHeader(
          //         currentAccountPicture: CircleAvatar(
          //           child: ClipRRect(
          //             borderRadius: BorderRadius.all(Radius.circular(100)),
          //             child: Container(
          //                 width: 300,
          //                 height: 300,
          //                 color: Colors.white,
          //                 child: Image.asset("assets/image/man2.jpeg",
          //                     fit: BoxFit.fill)),
          //           ),
          //         ),
          //         accountName: Text("Ghanem Ibrahim"),
          //         accountEmail: Text("ghanem.ibrahim@gmail.com"),
          //       ),
          //       // ------------------------------------------------------------------------------------

          //       ListTile(
          //         title: Text("الرئيسيه",
          //             style: TextStyle(color: Colors.green[400], fontSize: 15)),
          //         leading: Icon(
          //           Icons.home,
          //           color: Colors.green,
          //           size: 30,
          //         ),
          //       ),

          //       // ------------------------------------------------------------------------------------
          //       ListTile(
          //         title: Text("البروفايل",
          //             style: TextStyle(color: Colors.green, fontSize: 15)),
          //         leading:
          //             Icon(Icons.person, color: Colors.green[400], size: 30),
          //       ),

          //       // ------------------------------------------------------------------------------------
          //       ListTile(
          //         title: Text("الاعدادات",
          //             style: TextStyle(color: Colors.green, fontSize: 15)),
          //         leading:
          //             Icon(Icons.settings, color: Colors.green[400], size: 30),
          //       ),
          //       Divider(color: Colors.green),
          //       // ------------------------------------------------------------------------------------
          //       ListTile(
          //         title: Text("تسجيل الخروج",
          //             style: TextStyle(color: Colors.green, fontSize: 15)),
          //         leading: Icon(Icons.exit_to_app,
          //             color: Colors.green[400], size: 30),
          //       ),

          //       // ------------------------------------------------------------------------------------
          //     ],
          //   ),
          // ),

          child: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, right: 2),
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        title: Text("${widget.parentId2}"),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: Container(
                              width: 50,
                              height: 50,
                              color: Colors.white,
                              child: Image.asset("assets/image/man.png",
                                  fit: BoxFit.fill)),
                        ),
                        subtitle: Text("  تقنيه معلومات : المستوي الثاني"),
                        trailing: Icon(Icons.laptop_chromebook),
                        onTap: () {
                          getStudentData();
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => StudentDashbord(),
                          //     ));
                        },
                      ),
                      // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                      ListTile(
                        title: Text("احمد سيد"),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: Container(
                              width: 50,
                              height: 50,
                              color: Colors.white,
                              child: Image.asset("assets/image/books.jpg",
                                  fit: BoxFit.fill)),
                        ),
                        subtitle: Text("  علوم حاسوب : المستوي الثالث"),
                        trailing: Icon(Icons.laptop_chromebook),
                        onTap: () {},
                      ),
                      // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                    ],
                  ),
                )),
          ),

          // ---------------------------------------------------------------------------------------
        ],
      )),
    );
  }
}
