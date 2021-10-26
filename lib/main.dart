
import 'package:flutter/material.dart';
import 'package:lap_trinh_android/baitap.dart';
import 'package:lap_trinh_android/material_basic.dart';
import 'form_1.dart';
import 'form_basic.dart';
import 'list_basic.dart';
import 'callfakeAPI.dart';
import 'package:lap_trinh_android/baitap.dart';
import 'baitap.dart';
void main() {
  runApp(MyApp6());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);    //gọi phương thức lớp cha

  Widget createText(String data, a, b, c) {
    return Container(

      child: Text(
        data,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: a,
          fontSize: b,
          fontWeight: c,
        ),
      ),
    );
  }
  Widget iconStar() {
    return Container(
      child: Icon(
        Icons.star,
        textDirection: TextDirection.ltr,
        color: Colors.yellow.shade700,
      ),
    );
  }

  Widget createItem( String data1, String data2, IconData icon) {
    return Column(
      children: [
        Icon(
          icon,
          textDirection: TextDirection.ltr,
          color: Colors.green,
          size: 35.0,
        ),
        Text(
          data1,
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.black54
          ),
        ),
        Text(
          "",
          textDirection: TextDirection.ltr,
        ),
        Text(
          data2,
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.black54
          ),
        )
      ],
    );
  }

  Widget Panel(data) {
    return Container(
      child: data,
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.all(5.0),
      width: 380,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
        color: Colors.pink.shade50,

      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            textDirection: TextDirection.ltr,

            children: [
              Panel(createText("Straberry Paviova", Colors.lightBlue.shade900, 25.0, FontWeight.bold)),
              Panel(createText("Paviova is a meringue-based dessert named after the Russuianballerine Anna Pavlova. Pavlova featues a crisp crust and solf, light inside, topped with druit and whipped cream.",
                  Colors.lightBlue.shade900, 21.0, FontWeight.normal)),
              Panel(Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                textDirection:  TextDirection.ltr,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    textDirection:  TextDirection.ltr,
                    children: [
                      iconStar(),
                      iconStar(),
                      iconStar(),
                      iconStar(),
                      iconStar()
                    ],
                  ),
                  Text("170 reviews",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20.0
                    ),
                  )
                ],
              )),
              Text(
                "",
                textDirection: TextDirection.ltr,
              ),
              Panel(Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                textDirection: TextDirection.ltr,
                children: [
                  createItem("PREP:", "25 min", Icons.margin),
                  createItem("COOK:", "1 hr", Icons.access_alarm),
                  createItem("FEEDS:", "4-6", Icons.food_bank_sharp)
                ],
              ))
            ],
          ),
        )
    );
  }
}
