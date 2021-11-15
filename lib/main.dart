import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Talent Hire',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: FlutterLogo(

          size: 25
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed:(){},
          icon:Icon(Icons.arrow_back),
          color:Colors.grey,
        ),
          actions:<Widget>[
            IconButton(
                onPressed:(){},
                color: Colors.grey,
                icon: Icon(Icons.menu)
            )
          ]
      ),
      body: ListView(
        shrinkWrap:true,
        children:<Widget>[
          Stack(
            children:<Widget>[
              Container(
                height:100,
                color:Colors.white,
                child:Text("Get Coaching", style:TextStyle(fontFamily:'Montserrat', fontSize:20)),
              )
            ]
          ),

        ]
      ),

    );
  }
}
