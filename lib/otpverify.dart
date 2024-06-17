import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:yalla/home.dart';
class otpverify extends StatefulWidget {
  const otpverify({super.key});

  @override
  State<otpverify> createState() => _otpverifyState();
}

class _otpverifyState extends State<otpverify> {
  TextEditingController controller = TextEditingController();

  get child => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Otp verification'),
      ),
      body: Column(
        children: [
          Center(child: Image.asset('assets/ya.png')),
          Padding(
            padding: const EdgeInsets.only(right: 100,top: 40),
            child: Text('Otp verification',style: TextStyle(fontSize: 40),),
          ),
          Text('we have send you the verification code on',style: TextStyle(fontSize: 20),),
          Padding(
            padding: const EdgeInsets.only(right: 100,bottom: 12),
            child: Text('+972  9237349034',style: TextStyle(fontSize: 30),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: PinCodeTextField(
              controller: controller,
              maxLength: 4, // Set the length of the OTP
              autofocus: true,
              wrapAlignment: WrapAlignment.center,
              pinBoxWidth: 50,
              pinBoxHeight: 50,
              pinBoxRadius: 10,
              pinBoxBorderWidth: 2,
              onDone: (text) {
                // This callback is triggered when the user enters the complete OTP
                print("OTP Entered: $text");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home()),
                );
              },
              child: Container(
                height: 50,
                width: 400,
                color: Colors.red,

                child: Center(child: Text('verify'))),
            ),
            
          ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'do not recieve otp?',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w200)
            ),
            TextSpan(
              text: 'Resend',
              style: TextStyle(color: Colors.red)
            )
          ]
        )
         ),
    ],
    ),
      
    );
    

  }
}
