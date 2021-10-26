import 'package:flutter/material.dart';
class MyApp5 extends StatelessWidget {
  const MyApp5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormBasic(),
    );
  }
}
class FormBasic extends StatefulWidget {
  const FormBasic({Key? key}) : super(key: key);

  @override
  _FormBasicState createState() => _FormBasicState();
}

class _FormBasicState extends State<FormBasic> {

  var fKey = GlobalKey<FormState>();
  var txtTenDangNhap = TextEditingController();
  var txtMatKhau = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        title: Text("Đăng nhập hệ thống", style: TextStyle(fontSize: 25)),
      ),*/
      body: Form(
        key: fKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 200,),
              Text("Đăng nhập hệ thống", style: TextStyle(fontSize: 35, color: Colors.blue),),
              TextFormField(
                controller: txtTenDangNhap,
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return "Vui lòng nhập tên đăng nhập";
                  }
                  else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Tên đăng nhập",
                  labelText: "Tên đăng nhập"
                ),
              ),
              TextFormField(
                controller: txtMatKhau,
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
                     icon: Icon(Icons.lock_open),
                     hintText: "Nhập mật khẩu",
                     labelText: "Mật khẩu(*)"
                 ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if(fKey.currentState!.validate()){
                      var tenDangNhap = txtTenDangNhap.text;
                      var matKhau = txtMatKhau.text;
                      /*print("Ok, ${tenDangNhap}, ${matKhau}");*/
                     /* var alert = AlertDialog(
                        content: Text("Tên đăng nhập: ${tenDangNhap}, mật khẩu: ${matKhau}"),
                      );*/
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          content: Text("Tên đăng nhập: ${tenDangNhap}, mật khẩu: ${matKhau}"),
                        );
                      });
                    }
                    else
                      print("No pass");
                  },
                  child: Text("Đăng nhập")),
            ],
          ),
        ),
      ),
    );
  }
}

