import 'package:angadi/screens/login_screen.dart';
import 'package:angadi/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = 'SignUpScreen';
  @override
  Widget build(BuildContext context) {
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
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.only(top: width / 6),
                  child: CircleAvatar(
                    backgroundColor: Color(0xff5663ff),
                    radius: width / 6,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: height / 4,
                child: Column(
                  children: [
                    CustomTextField(
                      icon: Icon(Icons.perm_identity),
                      hintText: 'Name',
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
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
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    CustomTextField(
                      icon: Icon(Icons.lock),
                      hintText: 'Confirm Password',
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: height / 8,
                left: width * 0.05,
                right: width * 0.05,
                child: InkWell(
                  onTap: () {
                    print('Register');
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
                        'Register',
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
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xff5663ff),
                          ),
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
    );
  }
}
