import 'package:flutter/material.dart';
import 'package:yalla/saveaddress.dart';
class addaddress extends StatefulWidget {
  const addaddress({super.key});

  @override
  State<addaddress> createState() => _addaddressState();
}

class _addaddressState extends State<addaddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
body: Padding(
  padding: const EdgeInsets.all(100),
  child: InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => saveaddress()));
    },
    child: Container(
      width: 340,
      height: 50,
      //color: Colors.deepOrangeAccent,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepOrangeAccent
      ),
      child: Center(child: Text('Comform Location',style: TextStyle(color: Colors.white),)),
    ),
  ),
),
    );
  }
}
