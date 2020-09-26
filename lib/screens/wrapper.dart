import 'package:flutter/material.dart';
import 'package:flutter_demo/models/user.dart';
import 'package:flutter_demo/screens/authenticate/authenticate.dart';
import 'package:flutter_demo/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return Home or Authenticate widget

    final user = Provider.of<User>(context);
    print(user);
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
