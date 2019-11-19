
import 'package:flutter/src/widgets/framework.dart';
import 'package:odoo_api/odoo_api.dart';
import 'package:odoo_api/odoo_user_response.dart';
import 'package:gskedu/messages.dart';

class OdooApi{

  var myclient = OdooClient("http://192.168.1.6:8069");
  var db = "myApp";

  Future  getUsers(String name, String password) async {
    AuthenticateCallback aut = await myclient.authenticate(name, password, db);
    if (aut.isSuccess) {
      final user = aut.getUser();
      
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => HomePages(),
      //     ));
    }else{
      BuildContext context;
            alertMessage(context, "title", "body", "bottonText");
    }
  
  }
}