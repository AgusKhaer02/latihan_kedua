import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latihan_kedua/pages/SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // ctrl + D = duplicate
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // cara untuk mengambil value dari controller textformfield
  // printConsole(){
  //   print(usernameController.text);
  // }

  bool isVisible = false;

  // void changeVisibility(){
  //   setState(() {
  //     isVisible = !isVisible;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: Colors.purple[700]),
              ),
              SizedBox(
                height: 70,
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
                  obscureText: isVisible,
                  decoration: InputDecoration(
                      hintText: "Password...",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        icon: Icon(Icons.visibility),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Sign In"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.purple)
                      // shape: MaterialStateProperty.all<OutlinedBorder>(
                      //     OutlinedBorder().copyWith(
                      //       border
                      //     )
                      // )
                      ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  print("Forget Password");
                },
                child: Text("Forgot password?"),
              ),
              TextButton(
                onPressed: () {
                  // pindah halaman ke signup
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text("Don't have an account? Sign Up Here!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
