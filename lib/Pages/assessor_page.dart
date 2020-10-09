import 'package:Scaleindia/widgets/busy_button.dart';
import 'package:Scaleindia/widgets/input_field.dart';
import 'package:Scaleindia/widgets/style_constants.dart';
import 'package:Scaleindia/widgets/text_link.dart';
import 'package:flutter/material.dart';

class AssessorLoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          Center(
            child: ClipRRect(
              child: Image.asset(
                "assets/img/logo.png",
                fit: BoxFit.fill,
                height: 130,
                width: 300,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Welcomes You",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Center(
                        child: Text(
                      "Assessor Login",
                      style: kTitleStyle,
                    )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 280,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(32, 132, 232, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]))),
                            child: InputField(
                              placeholder: 'Enter Assessor Id',
                              controller: emailController,
                              text1InputType: TextInputType.number,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom:
                                        BorderSide(color: Colors.grey[200]))),
                            child: InputField(
                              placeholder: 'Password',
                              password: true,
                              text1InputType: TextInputType.text,
                              controller: passwordController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextLink(
                      'Forgot Password',
                      onPressed: () {
                        
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    BusyButton(
                      title: 'Login',
                      color: Colors.green,
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    new Padding(padding: EdgeInsets.only(bottom: 20.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}