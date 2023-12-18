import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_view/main.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }

}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("SinglechildScrollView",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 30,color: Colors.black)),
        ),
        backgroundColor: Colors.orange,
      ),
    body: Padding(

      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Container(
          color:Colors.black,
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(11.0),
                        height: 200,
                        width:200,
                        color: Colors.green,

                      ),   Container(
                        margin: EdgeInsets.all(11.0),
                        height: 200,
                        width:200,
                        color: Colors.deepPurpleAccent,
                      ),
                      Container(
                        margin: EdgeInsets.all(11.0),
                        height: 200,
                        width:200,
                        color: Colors.green,

                      ),
                      Container(
                        margin: EdgeInsets.all(11.0),
                        height: 200,
                        width:200,
                        color: Colors.deepPurpleAccent,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(11.0),
                height: 200,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                margin: EdgeInsets.all(11.0),
                height: 200,
                color: Colors.green,

              ),
              Container(
                margin: EdgeInsets.all(11.0),
                height: 200,
                color: Colors.deepPurpleAccent,
              ),

            ],
          ),
        ),
      ),
    ),
    );
  }

}