import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {

  TextEditingController ctrUsername = TextEditingController();
  TextEditingController ctrNama = TextEditingController();
  TextEditingController ctrPhoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: ctrUsername,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Username",
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: ctrNama,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nama",
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: ctrPhoneNumber,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Phone Number",
              ),
            ),
            ElevatedButton(onPressed: (){
              final result = [
                ctrUsername.text,
                ctrNama.text,
                ctrPhoneNumber.text
              ];
              Navigator.pop(context, result);
            }, child: Text("Save"))
          ],
        ),
      ),
    );
  }
}
