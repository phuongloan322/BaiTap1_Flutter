import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      home: Material_basic(),
    );
  }
}
class Material_basic extends StatefulWidget {
  const Material_basic({Key? key}) : super(key: key);

  @override
  _Material_basicState createState() => _Material_basicState();
}

class _Material_basicState extends State<Material_basic> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trang chủ"),
        leading: Icon(Icons.home, color: Colors.white,),
        actions: [
          IconButton(onPressed: () {
            var snack = SnackBar(content: Row(
             children: [
               Icon(Icons.alarm, color: Colors.white,),
               Text("Xin chao")
             ],
            ));

            ScaffoldMessenger.of(context).showSnackBar(snack);
          }, icon: Icon(Icons.add_alert_rounded)),
          IconButton(onPressed: () {

          }, icon: Icon(Icons.login))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network("https://images.unsplash.com/photo-1631215583473-4710df684df1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80"),
            Image.network("https://images.unsplash.com/photo-1619145512650-2c1237f40086?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=401&q=80"),
            Text("Dem: $count", style:TextStyle(fontSize: 30),),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              tooltip: "Loan",
                onPressed: () {

                },
                icon: Icon(Icons.call, size: 30, color: Colors.blue,)
            ),
            IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.place, size: 30, color: Colors.red,)
            ),
          ],

        )

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         setState(() {
           count++;
         });
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
