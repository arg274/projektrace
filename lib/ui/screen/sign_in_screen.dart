import 'package:codesamuraiproto2022/controller/auth_controller.dart';
import 'package:codesamuraiproto2022/controller/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:codesamuraiproto2022/theme/constants.dart';

class SignInScreen extends StatefulWidget {
  final AuthController authController;
  const SignInScreen({required this.authController, required void Function() toggleView});

  @override
  SignInScreenState createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  bool _isSigningIn = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailTEC = TextEditingController();
  final TextEditingController _pwdTEC = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Theme.of(context).primaryColor,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SafeArea(
            child: Padding(
              padding: globalEdgeInsets,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome to Projektrace!',
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .apply(color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Please log in or sign up using your email and password to continue.',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .apply(color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _emailTEC,
                                decoration: InputDecoration(
                                  labelText: 'Email'.toUpperCase(),
                                  labelStyle: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .apply(color: Colors.white),
                                  contentPadding:
                                  const EdgeInsets.symmetric(vertical: 5.0),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .apply(color: Colors.white),
                                onFieldSubmitted: (value) async {
                                },
                                validator: (email) =>
                                    validateEmail(email),
                              ),
                              TextFormField(
                                controller: _pwdTEC,
                                decoration: InputDecoration(
                                  labelText: 'Password'.toUpperCase(),
                                  labelStyle: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .apply(color: Colors.white),
                                  contentPadding:
                                  const EdgeInsets.symmetric(vertical: 5.0),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .apply(color: Colors.white),
                                onFieldSubmitted: (value) async {
                                },
                                validator: (pwd) =>
                                    validatePwd(pwd),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                                child: OutlinedButton(
                                  style: ButtonStyle(
                                    side: MaterialStateProperty.all(const BorderSide(
                                      color: Colors.white,
                                      width: 2.5,
                                    )),
                                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                    ),
                                  ),
                                  onPressed: () async {
                                    if (_formkey.currentState!.validate()) {
                                      setState(() {
                                        _isSigningIn = true;
                                      });
                                      String? status = await widget.authController.register(email: _emailTEC.text, password: _pwdTEC.text);
                                      setState(() {
                                        _isSigningIn = false;
                                      });

                                      if (status == null) {
                                        showAppToast(context, 'Success!');
                                      } else {
                                        showAppToast(context, 'Error: $status');
                                      }
                                    }
                                  },
                                  child: _isSigningIn? const SpinKitCubeGrid(size: 15.0, color: Colors.white) : Text(
                                    "Get Started",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .apply(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
