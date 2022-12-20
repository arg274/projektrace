

import 'package:codesamuraiproto2022/controller/auth_controller.dart';
import 'package:codesamuraiproto2022/ui/screen/sign_in_screen.dart';
import 'package:flutter/cupertino.dart';

class Authenticate extends StatefulWidget {
  final AuthController auther;
  Authenticate({required this.auther});
  @override
  _AuthenticateState createState() => _AuthenticateState();

}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView(){
    //print(showSignIn.toString());
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    return SignInScreen(authController: widget.auther,toggleView: toggleView,);

  }
}