import 'package:flutter/material.dart';
import 'package:yalla/otpverify.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('login',style: TextStyle(color: Colors.blue)),
      ),

      body: Center(
        child: Column(
          children:<Widget> [
            Image.asset('assets/ya.png'),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text('Phone Number',style: TextStyle(fontSize: 40),),
            ),
            Text('Enter your phone number to verify account'),
                const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),

                  ),

                ),

            Padding(
                padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const otpverify()),
                );

           {

            }
            }, child: Container(
              height: 50,
                width: 260,
                color: Colors.red,

                child: Center(child: Text('Continue'))),

            ),)
          ]
              )


      )


    );










  }
}
