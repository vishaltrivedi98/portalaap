import 'package:eglogics_app/home.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  String _login_by = "email";
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final _screen_height = MediaQuery.of(context).size.height;
    // final _screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.png"), fit: BoxFit.fill)),
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 5),
            child: Container(
              width: 150,
              height: 100,
              child: Image.asset('assets/Logowhite.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
          ),
          Text(
            "Login",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Text(
            "Login to access your dashboard",
            style: TextStyle(
                color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
          ),
          Container(
            width: 320,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    "Email",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // color: Colors.redAccent,
                        height: 50,
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          controller: _emailController,
                          autofocus: false,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white38,
                                ),
                                borderRadius: BorderRadius.circular(1),
                              ),
                              hintText: 'Enter email',
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),

                const Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    "Password",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        child: TextField(
                          controller: _passwordController,
                          autofocus: false,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: 'Enter password',
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return PasswordForget();
                          // }));
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(1.0))),
                    child: FlatButton(
                      minWidth: MediaQuery.of(context).size.width,
                      //height: 50,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(1.0))),
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Home();
                        }));
                        // onPressedLogin();
                      },
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 20.0),
                //   child: Center(
                //       child: Text(
                //     "or, create a new account ?",
                //     style: TextStyle(
                //         color: Colors.white, fontSize: 12),
                //   )),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 4.0),
                //   child: Container(
                //     height: 50,
                //     decoration: BoxDecoration(
                //         border: Border.all(
                //             color: Colors.grey, width: 1),
                //         borderRadius: const BorderRadius.all(
                //             Radius.circular(1.0))),
                //     child: FlatButton(
                //       minWidth: MediaQuery.of(context).size.width,
                //       //height: 50,
                //       color: Colors.white,
                //       shape: RoundedRectangleBorder(
                //           borderRadius: const BorderRadius.all(
                //               Radius.circular(1.0))),
                //       child: Text(
                //         "Sign up",
                //         style: TextStyle(
                //             color: Colors.red,
                //             fontSize: 20,
                //             fontWeight: FontWeight.w600),
                //       ),
                //       onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) {
                //   return Registration();
                // }));
                //       },
                //     ),
                //   ),
                // ),
              ],
            ),
          )
        ],
      )),
    ));
  }
}