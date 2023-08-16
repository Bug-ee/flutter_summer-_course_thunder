import 'package:flutter/material.dart';
import 'package:lesson_19_flutter/components/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Text("iCodeGram"),
              SizedBox(
                height: 64,
              ),
              TextFieldInput(
                  hintText: "Enter your email",
                  isPassword: false,
                  textEditingController: _emailController),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  hintText: "Enter your password",
                  isPassword: true,
                  textEditingController: _passwordController),
              InkWell(
                onTap:loginUser,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      "Нэвтрэх",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
                child: Flexible(
                  flex: 2,
                  child: Container(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
