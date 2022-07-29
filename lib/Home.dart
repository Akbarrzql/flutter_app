import 'package:flutter/material.dart';
import 'package:flutter_tugas/Edit.dart';

class Home extends StatefulWidget {
  Home({Key? key,  required this.userName, required this.name, required this.phoneNumber}) : super(key: key);
  String userName;
  String name;
  String phoneNumber;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(title: Text("Home"),),
      body: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(15),
              child: Text("Selamat Datang, ${widget.userName}", style: TextStyle(color: Colors.lightBlue),),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(15),
              child: Text("Nama Kamu : ${widget.name}", style: TextStyle(color: Colors.lightBlue, ),),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(15),
              child: Text("No tlp Kamu : ${widget.phoneNumber}", style: TextStyle(color: Colors.lightBlue),),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(15),
              child: ElevatedButton(onPressed: ()async{
                  final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => Edit()));
                  setState(() {
                    widget.userName = result[0];
                    widget.name = result[1];
                    widget.phoneNumber = result[2];
                  },);
                },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue
                  ),
                  child: Text("Edit Data", style: TextStyle(fontSize: 15, color:  Colors.white),),),
            )
          ],
        ),
      ),

    );
  }
}
