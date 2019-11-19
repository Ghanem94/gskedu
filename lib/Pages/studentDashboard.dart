import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StudentDashbord extends StatefulWidget {
  @override
  _StudentDashbordState createState() => _StudentDashbordState();
}

class _StudentDashbordState extends State<StudentDashbord> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // appBar: AppBar(
        //   elevation: 0.6,
        //   backgroundColor: Colors.green[400].withOpacity(0.8),
        //   title: Text("بروفايل الطالب"),
        // ),
        body: new Stack(
          children: <Widget>[
            ClipPath(
              child: Container(
                color: Colors.green[400].withOpacity(0.8),
              ),
              clipper: getClipper(),
            ),
            Positioned(
              width: 350,
              top: MediaQuery.of(context).size.height / 15,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 6, top: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        InkWell(
                          child: Icon(
                            Icons.arrow_back,
                            size: 40,
                            color: Colors.green[400],
                          ),
                          onTap: () {
                            Navigator.pop(context, false);
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: ExactAssetImage("assets/image/man.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(75),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ]),
                  ),
                  // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                  SizedBox(height: 6),
                  Text(
                    "غانم ابراهيم",
                    style: TextStyle(fontSize: 30, color: Colors.blueGrey),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 20, top: 10),
                    child: SingleChildScrollView(
                        // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10,left: 10),
                          child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      children: <Widget>[

                          Container(
                            child: Column(
                              children: <Widget>[
                                
                                CircleAvatar(
                                  maxRadius: 30,
                                  backgroundColor: Colors.green[200],
                                  child: Icon(Icons.description,color: Colors.white,size: 30,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10,top: 5),
                                  child: Text("المواد",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                ),
                                
                              ],
                            ),
                          ),
                          // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                          Container(
                            child: Column(
                              children: <Widget>[
                                
                                CircleAvatar(
                                  maxRadius: 30,
                                  backgroundColor: Colors.orange[200],
                                  child: Icon(Icons.people_outline,color: Colors.white,size: 30,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10,top: 5),
                                  child: Text("الاساتذة",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                ),
                                
                              ],
                            ),
                          ),
                          // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                          Container(
                            child: Column(
                              children: <Widget>[
                                
                                CircleAvatar(
                                  maxRadius: 30,
                                  backgroundColor: Colors.lightBlue[200],
                                  child: Icon(Icons.calendar_today,color: Colors.white,size: 30,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10,top: 5),
                                  child: Text("الجدول",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                ),
                                
                              ],
                            ),
                          ),
                          // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  
                                  CircleAvatar(
                                    maxRadius: 30,
                                    backgroundColor: Colors.red[200],
                                    child: Icon(Icons.access_alarms,color: Colors.white,size: 30,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10,left: 10,top: 5),
                                    child: Text("الحضور",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                          // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  
                                  CircleAvatar(
                                    maxRadius: 30,
                                    backgroundColor: Colors.green[200],
                                    child: Icon(Icons.rate_review,color: Colors.white,size: 30,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10,left: 10,top: 5),
                                    child: Text("الاختبارات",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                          // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  
                                  CircleAvatar(
                                    maxRadius: 30,
                                    backgroundColor: Colors.orange[200],
                                    child: Icon(Icons.content_paste,color: Colors.white,size: 30,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10,left: 10,top: 5),
                                    child: Text("الامتحانات",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                          // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  
                                  CircleAvatar(
                                    maxRadius: 30,
                                    backgroundColor: Colors.orange[200],
                                    child: Icon(Icons.local_hospital,color: Colors.white,size: 30,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10,left: 10,top: 5),
                                    child: Text("الصحه",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                          // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  
                                  CircleAvatar(
                                    maxRadius: 30,
                                    backgroundColor: Colors.lightBlue[200],
                                    child: Icon(Icons.directions_walk,color: Colors.white,size: 30,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10,left: 10,top: 5),
                                    child: Text("السلوكيات",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                          // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                          
                      ],
                    ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 2.9);
    path.lineTo(size.width + 50, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
