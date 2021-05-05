import 'package:flutter/material.dart';
import 'package:villaflor_mobdev/mixins/ValidationMixin.dart';
import 'package:villaflor_mobdev/pages/login.dart';
import 'package:villaflor_mobdev/widgets/CustomTextFormField.dart';
import 'package:villaflor_mobdev/widgets/PasswordField.dart';
import 'package:villaflor_mobdev/widgets/PrimaryButton.dart';
import 'package:villaflor_mobdev/widgets/SecondaryButton.dart';

class Registration extends StatefulWidget {
  static const String routeName = "registration";
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> with ValidationMixin{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController fNameTextController = TextEditingController();
  final TextEditingController lNameTextController = TextEditingController();
  final TextEditingController birthdateController = TextEditingController();
  final TextEditingController phonenumberController = TextEditingController();
  final TextEditingController emailAddressTextController = TextEditingController();
  final TextEditingController addressTextController = TextEditingController();
  final TextEditingController establishmentController = TextEditingController();
  final TextEditingController storeaddressTextController = TextEditingController();
  bool obscureText = true;
  String usertype = "Civilian";

  @override
  Widget build(BuildContext context) {
    return usertype == "Civilian"?
    SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Registration"),
          titleTextStyle: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
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
                    height: 10.0,
                  ),
                  DropDownField(usertype),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomTextFormField(
                    labelText: "First Name", 
                    hintText: "Enter your first name", 
                    iconData: Icons.person, 
                    textEditingController: fNameTextController, 
                    textInputType: TextInputType.name,
                    validation: validateName,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomTextFormField(
                    labelText: "Last Name", 
                    hintText: "Enter your last name", 
                    iconData: Icons.person, 
                    textEditingController: lNameTextController, 
                    textInputType: TextInputType.name,
                    validation: validateName,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomTextFormField(
                    labelText: "Date of Birth", 
                    hintText: "Enter your birth day", 
                    iconData: Icons.calendar_today, 
                    textEditingController: birthdateController, 
                    textInputType: TextInputType.name,
                    validation: validatedate,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomTextFormField(
                    labelText: "Phone Number", 
                    hintText: "Enter your phone number", 
                    iconData: Icons.phone, 
                    textEditingController: phonenumberController, 
                    textInputType: TextInputType.name,
                    validation: validatePnumber,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomTextFormField(
                    labelText: "E-mail Address", 
                    hintText: "Enter your e-mail", 
                    iconData: Icons.email, 
                    textEditingController: emailAddressTextController, 
                    textInputType: TextInputType.emailAddress,
                    validation: validateEmail,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomTextFormField(
                    labelText: "Home Address", 
                    hintText: "Enter your address", 
                    iconData: Icons.house,
                    textEditingController: addressTextController, 
                    textInputType: TextInputType.streetAddress,
                    validation: validateAddress,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  PasswordField(
                    labelText: "Password", 
                    hintText: "Enter your Password", 
                    obscureText: obscureText, 
                    onTap: setPasswordVisibility,
                    validation: validatePassword,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  PasswordField(
                    labelText: "Confirm Password", 
                    hintText: "Confirm Password", 
                    obscureText: obscureText, 
                    onTap: setPasswordVisibility,
                    validation: validatePassword,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  PrimaryButton(
                    text: "Register Now", 
                    iconData: Icons.app_registration, 
                    onPress: register,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SecondaryButton(
                    text: "Already registered? Click here!", 
                    onPress: (){
                      navigateToLogin(context);
                    }
                  ),
                ])
            )
          )
        )
      )
    )):
    SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Registration"),
          titleTextStyle: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
              key: formKey,
              child: Column(
                children: [
                  DropDownField(usertype),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomTextFormField(
                    labelText: "Establishment", 
                    hintText: "Enter your establishment", 
                    iconData: Icons.email, 
                    textEditingController: establishmentController, 
                    textInputType: TextInputType.emailAddress,
                    validation: validatedate,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomTextFormField(
                    labelText: "Phone Number", 
                    hintText: "Enter your phone number", 
                    iconData: Icons.phone, 
                    textEditingController: phonenumberController, 
                    textInputType: TextInputType.name,
                    validation: validatePnumber,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomTextFormField(
                    labelText: "E-mail Address", 
                    hintText: "Enter your e-mail", 
                    iconData: Icons.email, 
                    textEditingController: emailAddressTextController, 
                    textInputType: TextInputType.emailAddress,
                    validation: validateEmail,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomTextFormField(
                    labelText: "Store Address", 
                    hintText: "Enter your address", 
                    iconData: Icons.pin_drop,
                    textEditingController: addressTextController, 
                    textInputType: TextInputType.streetAddress,
                    validation: validateAddress,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  PasswordField(
                    labelText: "Password", 
                    hintText: "Enter your Password", 
                    obscureText: obscureText, 
                    onTap: setPasswordVisibility,
                    validation: validatePassword,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  PasswordField(
                    labelText: "Confirm Password", 
                    hintText: "Confirm Password", 
                    obscureText: obscureText, 
                    onTap: setPasswordVisibility,
                    validation: validatePassword,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  PrimaryButton(
                    text: "Register Now", 
                    iconData: Icons.app_registration, 
                    onPress: register,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SecondaryButton(
                    text: "Already registered? Click here!", 
                    onPress: (){
                      navigateToLogin(context);
                    }
                  ),
                ])
            )
          )
        )
      )
    ));
  }

  void register(){
    if(formKey.currentState.validate()){
      print("Valid inputs");
      Navigator.pushReplacementNamed(context, Login.routeName);
    } else {
      print("Invalid inputs");
    }
  }

  void setPasswordVisibility(){
    setState(() {
      obscureText = !obscureText;
    });
  }

  void navigateToLogin(BuildContext context){
    Navigator.pushNamed(context, Login.routeName);  
  }

  Widget DropDownField(String dropdownValue) {
    return Container(
          padding: EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          child: Row(
            children: [
              Container(
                child: Icon(
                  Icons.person_add,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              DropdownButton<String>(
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.5,
                ),
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 20,
                elevation: 16,
                onChanged: (String newValue) {
                  setState(() {
                    usertype = newValue;
                  });
                },
                items: <String>['Civilian', 'Contact Tracer']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
    );
  }

}