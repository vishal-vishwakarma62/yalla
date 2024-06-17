import 'package:flutter/material.dart';
class myprofile extends StatefulWidget {
  const myprofile({super.key});

  @override
  State<myprofile> createState() => _myprofileState();
}

class _myprofileState extends State<myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(

    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/Aadmi.png'),

              ),
              
            ),
           Padding(
             padding: const EdgeInsets.only(bottom: 10),
             child: CircleAvatar(
               radius: 10,
               backgroundColor: Colors.redAccent,
               child: Icon(Icons.create,color: Colors.white,),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 340,top: 20),
             child: Text('Name'),
           ),
            Container(
              width: 375,
              height: 75,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Vinson Cooper',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                )
              ),
              ),
            Padding(
              padding: const EdgeInsets.only(right: 290,top: 20),
              child: Text('Phone number'),
            ),
            Container(
              width: 375,
              height: 75,
              child: TextField(
                  decoration: InputDecoration(
                    hintText: '+972 89745 61230',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                      )
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 330,top: 20),
              child: Text('Email Id'),
            ),
            Container(
              width: 375,
              height: 75,
              child: TextField(
                  decoration: InputDecoration(
                    hintText: 'vinsoncooper123@gmail.com',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)

                      )
                  ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Container(
                width: 375,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.redAccent
                ),
                child: Center(child: Text('Update profile',style: TextStyle(color: Colors.white),)),
              ),
            ),


          ],
        ),
      ),
    );

  }
}
