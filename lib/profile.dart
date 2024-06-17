import 'package:flutter/material.dart';
import 'package:yalla/myorder.dart';
import 'package:yalla/myprofile.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
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
            Text('Vinson Cooper',style: TextStyle(fontSize: 20),),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => myprofile()));
              },
            child:Padding(
              padding: const EdgeInsets.only(left: 20,top: 60),
              child: Row(
                children: [
                  Icon(Icons.account_circle_outlined,color: Colors.redAccent,),
                  Text('My Profile'),
                  Padding(
                    padding: const EdgeInsets.only(left: 260),
                    child: Icon(Icons.keyboard_arrow_right_outlined),
                  ),


                ],
              ),
            ),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => myorder()));
              },
        child:    Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Row(
                children: [
                  Icon(Icons.shopping_bag_outlined,color: Colors.redAccent,),
                  Text('My Orders '),
                  Padding(
                    padding: const EdgeInsets.only(left: 260),
                    child: Icon(Icons.keyboard_arrow_right_outlined),
                  ),

                ],
              ),
            ),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Row(
                children: [
                  Icon(Icons.favorite,color: Colors.redAccent,),
                  Text('Favorite'),
                  Padding(
                    padding: const EdgeInsets.only(left: 260),
                    child: Icon(Icons.keyboard_arrow_right_outlined),
                  ),

                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Row(
                children: [
                  Icon(Icons.history,color: Colors.redAccent,),
                  Text('History'),
                  Padding(
                    padding: const EdgeInsets.only(left: 260),
                    child: Icon(Icons.keyboard_arrow_right_outlined),
                  ),

                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Row(
                children: [
                  Icon(Icons.privacy_tip_outlined,color: Colors.redAccent,),
                  Text('Privacy Policy'),
                  Padding(
                    padding: const EdgeInsets.only(left: 260),
                    child: Icon(Icons.keyboard_arrow_right_outlined),
                  ),

                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Row(
                children: [
                  Icon(Icons.contact_mail_sharp,color: Colors.redAccent,),
                  Text('Contact Us'),
                  Padding(
                    padding: const EdgeInsets.only(left: 260),
                    child: Icon(Icons.keyboard_arrow_right_outlined),
                  ),

                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Row(
                children: [
                  Icon(Icons.logout,color: Colors.redAccent,),
                  Text('logout'),
                  Padding(
                    padding: const EdgeInsets.only(left: 260),
                    child: Icon(Icons.keyboard_arrow_right_outlined),
                  ),


                ],
              ),
            ),
            Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset('assets/ya.png'),
                ))
          ],
        ),
      ),
    );
  }
}
