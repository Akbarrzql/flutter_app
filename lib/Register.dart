import 'package:flutter/material.dart';
import 'package:flutter_tugas/Home.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  TextEditingController ctrUsername = TextEditingController();
  TextEditingController ctrNama = TextEditingController();
  TextEditingController ctrPhoneNumber = TextEditingController();

  Widget txtInput(TextEditingController controller, String username,){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: username
      ),
    );
  }
  Widget btnRegister(String btnSubmit){
    return Container(
      width: 125,
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home(userName: ctrUsername.text, name: ctrNama.text, phoneNumber: ctrPhoneNumber.text)));
        },
        child: Text (btnSubmit),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            txtInput(ctrUsername, "Username"),
            SizedBox(height: 10,),
            txtInput(ctrNama, "Nama"),
            SizedBox(
              height: 20,
            ),
            txtInput(ctrPhoneNumber, "Phone Number"),
            SizedBox(
              height: 20,
            ),
            btnRegister("Register"),
          ],
        ),
    ),
    );
  }
}
