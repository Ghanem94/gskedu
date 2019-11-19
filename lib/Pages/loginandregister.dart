import 'package:flutter/material.dart';
import 'package:gskedu/Pages/parentlogin.dart';
import 'package:gskedu/Pages/studentlogin.dart';


class LoginAndRegister extends StatefulWidget {
  @override
  _LoginAndRegisterState createState() => _LoginAndRegisterState();
}

class _LoginAndRegisterState extends State<LoginAndRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          bottom: true,
          top: true,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.1), BlendMode.dstATop),
                    image: AssetImage("assets/image/read1.jpg"),
                    fit: BoxFit.cover)
                    ),
            child: Wrap(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(200.0)),
                      child: Container(
                        color: Colors.yellow[800],
                        height: 100.0,
                        width: 130.0,
                      ),
                    ),
                    Positioned(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(800.0),
                                bottomRight: Radius.circular(950.0)),
                            child: Container(
                              height: 150.0,
                              width: 80.0,
                              color: Colors.green[400].withOpacity(0.8),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Image.asset(
                                'assets/image/gsk-it.png',
                                width: 230,
                                height: 170,
                              )
                              // Icon(
                              //   Icons.people,
                              //   size: 80.0,
                              //   color: Colors.green,
                              // )
                            ],
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, left: 20, right: 20),
                            child: Container(
                              width: double.infinity,
                              
                              // decoration: BoxDecoration(
                              //     color: Colors.white,
                              //     borderRadius: BorderRadius.circular(8.0),
                              //     boxShadow: [BoxShadow(
                              //       color: Colors.black,
                              //       offset: Offset(0.0, 15.0),blurRadius: 15.0

                              //     )]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Column(
                                  children: <Widget>[
                                    Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Row(
                                        children: <Widget>[
                                          
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.0,
                                    ),
                                    
                                    
                                    
                                    
                                    SizedBox(height: 50.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        InkWell(
                                          child: Container(
                                            width: 250.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                                color: Colors.green[400].withOpacity(0.8),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        50.0)),
                                            child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10,right: 10),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              left: 19),
                                                      child: Image.asset(
                                                        "assets/icon/login.png",
                                                        width: 30,
                                                        height: 30,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Text(
                                                      "دخول اولياء الامور",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 19.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => ParentLogin(),
                                                ));
                                          },
                                        )
                                      ],
                                    ),
                                    // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                                    SizedBox(height: 30,),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        InkWell(
                                          child: Container(
                                            width: 250.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                                color: Colors.yellow[800],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        50.0)),
                                            child: Center(
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10,right: 10),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10,
                                                              left: 30),
                                                      child: Image.asset(
                                                        "assets/icon/login.png",
                                                        width: 30,
                                                        height: 30,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Text(
                                                      "دخول  الطلاب",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 19.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => StudentLogin(),
                                                ));
                                          },
                                        )
                                      ],
                                    ),
                                    // +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 50,
                                          left: 30,
                                          right: 30,
                                          bottom: 9),
                                      child: Center(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Image.asset(
                                                "assets/icon/fb.png",
                                                width: 50,
                                                height: 50,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Image.asset(
                                                "assets/icon/yt.png",
                                                width: 40,
                                                height: 40,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Image.asset(
                                                "assets/icon/twitter.png",
                                                width: 50,
                                                height: 50,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      
    );
  }
}
