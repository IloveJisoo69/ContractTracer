import 'package:flutter/material.dart';
import 'package:villaflor_mobdev/mixins/ValidationMixin.dart';
import 'package:villaflor_mobdev/pages/dashboard.dart';
import 'package:villaflor_mobdev/pages/registration.dart';
import 'package:villaflor_mobdev/widgets/CustomTextFormField.dart';
import 'package:villaflor_mobdev/widgets/PasswordField.dart';
import 'package:villaflor_mobdev/widgets/PrimaryButton.dart';
import 'package:villaflor_mobdev/widgets/SecondaryButton.dart';

class Login extends StatefulWidget {
  static const String routeName = "login";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with ValidationMixin{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  bool obscureText = true;
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomTextFormField(
                      labelText: "E-mail Address", 
                      hintText: "Enter a valid e-mail", 
                      iconData: Icons.email, 
                      textEditingController: emailTextController, 
                      textInputType: TextInputType.emailAddress,
                      validation: validateEmail,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    PasswordField(
                      labelText: "Password", 
                      hintText: "Enter your Password", 
                      textEditingController: passwordTextController, 
                      obscureText: obscureText, 
                      onTap: setPasswordVisibility,
                      validation: validatePassword,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    PrimaryButton(
                      text: "Login", 
                      iconData: Icons.login, 
                      onPress: login,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SecondaryButton(
                          text: "New User? Register here!", 
                          onPress: (){
                            navigateToRegistration(context);
                          }
                        ),
                        SecondaryButton(
                          text: "Forgot Password?", 
                          onPress: (){}
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),  
        ),
      )
    );
  }

  void login(){
    if(formKey.currentState.validate()){
      print("Valid inputs");
      Navigator.pushReplacementNamed(context, Dashboard.routeName);
    } else {
      print("Invalid inputs");
    }
  }

  void setPasswordVisibility(){
    setState(() {
      obscureText = !obscureText;
    });
  }

  void navigateToRegistration(BuildContext context){
    Navigator.pushNamed(context, Registration.routeName);  
  }
}

