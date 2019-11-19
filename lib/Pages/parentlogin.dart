import 'package:flutter/material.dart';
import 'package:gskedu/Pages/home.dart';
import 'package:gskedu/Pages/parentlogin.dart';
import 'package:gskedu/Pages/homePages.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';
import 'dart:convert';
import 'package:odoo_api/odoo_user_response.dart';
import 'package:odoo_api/odoo_api_connector.dart';
import 'package:odoo_api/odoo_api.dart';
import 'package:odoo_api/odoo_user_response.dart';
import 'package:gskedu/odooApi.dart';
import 'package:gskedu/messages.dart';
import 'package:gskedu/connectionInfo.dart';
import 'package:gskedu/myDbFunction.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ParentLogin extends StatefulWidget {
  @override
  _ParentLoginState createState() => _ParentLoginState();
}

class _ParentLoginState extends State<ParentLogin> {
  // >>>>>>>>>>>>>>>>>>>>>>>>>>>>> start my Function area <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  // ******************** authenticate Function
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  
  // var db = connectionDb;
  // var model = "hr.employee";
  // List<int> ids = [28];
  // List domain = [['name','=','ghanem']];
  // Map values = {'name':'${nameController.text}'};
  // List<String> fields = ['name','department_id'];
  // ++++++++++++++++++++++++++++++++++++++++ Functions +++++++++++++++++++++++++++++++++++++++++
  Future login(String name, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    AuthenticateCallback aut = await odooAuthenticate(name, password);
    if (aut.isSuccess) {
      var uId = aut.getUser().partnerId;
      
      var model = 'res.partner';
      var domain = [['id','=','${uId}']];
      var fields = ['phone','email','lang','street','child_ids'];
      var userInfo = await odooSearchRead(model, domain, fields);

      print(userInfo['records']);

      var childID = userInfo['records'][0]['child_ids'][0];
      var fields2 = ['name','title'];
      var childInfo = await odooSearchRead(model, [['id','=','${childID}']],fields2 );

      print(childInfo['recordscd']);


      // if (userInfo) {
      //   print(userInfo);
      // }else{
      //   print('user Not Found !');
      // }
      // prefs.setInt("userId", aut.getUser().partnerId);
      

      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => HomePages(),
      //     ));
    } else {
      alertMessage(
          context, "خطاء !", "تأكد من اسم المستخدم او كلمه المرور ", "موافق");
    }
  }

  // .........................................................................................

  // >>>>>>>>>>>>>>>>>>>>>>>>>>>>> end my Function area <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: true,
          top: true,
          child: Container(
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
                                'assets/image/palogin.png',
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
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                // Text(
                                //   "جامعتي",
                                //   style: TextStyle(fontSize: 20.0, color: Colors.grey),
                                // ),
                              ],
                            ),
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
                                          Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 40,
                                                    left: 40,
                                                    top: 10),
                                                child: Text(
                                                  " تسجيل دخول اولياء الامور",
                                                  style: TextStyle(
                                                      fontSize: 20.0,
                                                      color: Colors.green[400]
                                                          .withOpacity(0.8)),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: TextFormField(
                                            controller: nameController,
                                            decoration: InputDecoration(
                                              labelText: "رقم الهاتف",
                                              hintText: '0912345678',
                                              labelStyle:
                                                  TextStyle(color: Colors.grey),
                                              border: UnderlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              icon: Icon(
                                                Icons.phone,
                                                color: Colors.green[400]
                                                    .withOpacity(0.8),
                                              ),
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Divider(
                                        color: Colors.green,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: TextFormField(
                                          controller: passwordController,
                                          decoration: InputDecoration(
                                            labelText: "كلمة المرور",
                                            hintText: '********',
                                            labelStyle:
                                                TextStyle(color: Colors.grey),
                                            border: UnderlineInputBorder(
                                                borderSide: BorderSide.none),
                                            icon: Icon(
                                              Icons.lock,
                                              color: Colors.green[400]
                                                  .withOpacity(0.8),
                                            ),
                                          ),
                                          obscureText: true,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Divider(
                                        color: Colors.green,
                                      ),
                                    ),
                                    SizedBox(height: 20.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        InkWell(
                                          child: Container(
                                            width: 150.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                                color: Colors.green[400]
                                                    .withOpacity(0.8),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        50.0)),
                                            child: Center(
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
                                                    "دخول",
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
                                          onTap: () {
                                            if (nameController
                                                    .text.isNotEmpty ||
                                                passwordController
                                                    .text.isNotEmpty) {
                                              login(nameController.text,
                                                  passwordController.text);
                                            }
                                          },
                                        )
                                      ],
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(
                                    //       top: 50,
                                    //       left: 30,
                                    //       right: 30,
                                    //       bottom: 9),
                                    //   child: Center(
                                    //     child: Row(
                                    //       crossAxisAlignment:
                                    //           CrossAxisAlignment.center,
                                    //       children: <Widget>[
                                    //         Padding(
                                    //           padding: const EdgeInsets.only(
                                    //               left: 15, right: 15),
                                    //           child: Image.asset(
                                    //             "assets/icon/fb.png",
                                    //             width: 50,
                                    //             height: 50,
                                    //           ),
                                    //         ),
                                    //         Padding(
                                    //           padding: const EdgeInsets.only(
                                    //               left: 15, right: 15),
                                    //           child: Image.asset(
                                    //             "assets/icon/yt.png",
                                    //             width: 40,
                                    //             height: 40,
                                    //           ),
                                    //         ),
                                    //         Padding(
                                    //           padding: const EdgeInsets.only(
                                    //               left: 15, right: 15),
                                    //           child: Image.asset(
                                    //             "assets/icon/twitter.png",
                                    //             width: 50,
                                    //             height: 50,
                                    //           ),
                                    //         ),
                                    //       ],
                                    //     ),
                                    //   ),
                                    // ),
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
      ),
    );
  }
}
