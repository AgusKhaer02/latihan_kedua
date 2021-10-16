import 'package:flutter/material.dart';
import 'package:latihan_kedua/pages/Home.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Sign Up",
                style : TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Colors.purple[700]

                ),
              ) ,
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: fullnameController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: "Fullname...",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: emailController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: "Email...",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: usernameController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: "Username...",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),

                child: TextFormField(
                  controller: passwordController,
                  maxLines: 1,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password...",
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        icon: Icon(Icons.visibility),
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                  onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text("Sign Up"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.purple)
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
