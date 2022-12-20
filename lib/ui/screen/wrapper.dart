import 'package:codesamuraiproto2022/controller/auth_controller.dart';
import 'package:codesamuraiproto2022/ui/screen/project_map.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'auth_screen.dart';

class Wrapper extends StatelessWidget {
  Wrapper({required this.auth});
  final AuthController auth;
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<ProjekTrace>(context);

    // return either the Home or Authenticate widget
    if (user == null){
      return Authenticate(auther: auth);
    } else {
      return ProjectMap();
    }

  }
}