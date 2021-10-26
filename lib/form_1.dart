import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
class form1 extends StatelessWidget {
  const form1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: form(),
    );
  }
}

class form extends StatefulWidget {
  const form({Key? key}) : super(key: key);

  @override
  _formState createState() => _formState();
}

class _formState extends State<form> {

  var fKey = GlobalKey<FormState>();
  var txtUsername = TextEditingController();
  var txtPassword = TextEditingController();

  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(
        key: fKey,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Welcome",
                    style: GoogleFonts.lobster(
                      fontSize: 60,
                      color: Colors.blue.shade800
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: txtUsername,
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return "Vui lòng nhập tên đăng nhập";
                      }
                      else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Username",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person)
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: txtPassword,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return "Vui lòng nhập mật khẩu";
                      }
                      else if(value.length < 6) {
                        return "Mật khẩu dài ít nhất là 6 ký tự";
                      }
                      else
                        return null;
                    },
                    decoration: InputDecoration(
                        labelText: "Password (*)",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye)
                    ),
                    obscureText: _obscureText,
                  ),
                  // new FlatButton(onPressed: _toggle, new Text(_obscureText ? "Show" : "Hide")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          print("Forgotted Passwprd!");
                        },
                        child:
                        Text("Forgot Password?",
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black.withOpacity(0.4)
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: MaterialButton(
                        onPressed: () {
                          if(fKey.currentState!.validate()){
                            var tenDangNhap = txtUsername.text;
                            var matKhau = txtPassword.text;
                            showDialog(context: context, builder: (context){
                              return AlertDialog(
                                content: Text("Tên đăng nhập: ${tenDangNhap}, mật khẩu: ${matKhau}"),
                              );
                            });
                          }
                          else
                            print("No pass");
                        },
                        color: Colors.blue.shade800,
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: Colors.black.withOpacity(0.1),
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black.withOpacity(0.5)
                        ),
                      ),
                      TextButton(
                          onPressed: () => "Sign up",
                          child:
                            Text("Register Now",
                            style: TextStyle(
                              fontSize: 17
                            )
                          ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image.asset("Facebook.png", width: 80,),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}

