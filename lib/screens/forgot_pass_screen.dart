import 'package:angadi/screens/signup_screen.dart';
import 'package:angadi/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class ForgotPassScreen extends StatelessWidget {
  static const routeName = 'ForgotPassScreen';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
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
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 8, vertical: width / 2.5),
                  child: Text(
                    'Enter your email and will send you instructions on how to reset it',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: height / 2,
                child: CustomTextField(
                  icon: Icon(Icons.email),
                  hintText: 'Email',
                ),
              ),
              Positioned(
                bottom: height / 3,
                left: width * 0.05,
                right: width * 0.05,
                child: InkWell(
                  onTap: () {
                    print('Login');
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
                        'Send',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
