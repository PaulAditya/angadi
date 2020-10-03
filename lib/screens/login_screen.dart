import 'package:angadi/screens/forgot_pass_screen.dart';
import 'package:angadi/screens/main_screen.dart';
import 'package:angadi/screens/signup_screen.dart';
import 'package:angadi/services/authentication.dart';
import 'package:angadi/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash_image_2.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3),
                BlendMode.dstATop,
              ),
            ),
          ),
          child: Builder(
            builder: (BuildContext context) {
              return Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.only(top: width / 4.5),
                      child: Text(
                        'ANGADI',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: height / 2.3,
                    child: Column(
                      children: [
                        CustomTextField(
                          
                          icon: Icon(Icons.email),
                          hintText: 'Email',
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        CustomTextField(
                          
                          icon: Icon(Icons.lock),
                          hintText: 'Password',
                          obscured: true,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(ForgotPassScreen.routeName);
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: height / 3,
                    left: width * 0.05,
                    right: width * 0.05,
                    child: InkWell(
                      onTap: () async {
                        if (_emailController.text.length == 0 ||
                            _passwordController.text.length == 0) {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text("Fields cannot be empty"),
                          ));
                        } else {
                          dynamic result = AuthService().signInWithEmail(
                              _emailController.text, _passwordController.text);
                          if (result == null) {
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text("Error Signin-in"),
                            ));
                          } else {
                            Navigator.of(context)
                                .pushNamed(MainScreen.routeName);
                          }
                        }
                      },
                      child: Container(
                        width: width / 1.1,
                        height: height * 0.07,
                        decoration: BoxDecoration(
                          color: Color(0xff5663ff),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(SignUpScreen.routeName),
                      child: Container(
                        padding: EdgeInsets.only(bottom: height * 0.03),
                        child: Text(
                          'Create new account',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
