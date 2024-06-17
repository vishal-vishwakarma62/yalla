import 'package:flutter/material.dart';
class myorder extends StatefulWidget {
  const myorder({super.key});

  @override
  State<myorder> createState() => _myorderState();
}

class _myorderState extends State<myorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('My Order'),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/BiryaniOrder.png'),
                   Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50,top: 10),
                          child: Text('Biryani By Kilo',style: TextStyle(fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('17, HaHarash Kiryat Shalom \n Tel Aviv- Yafo, Israel'),
                        ),
                      ],
                    ),
                 // ),

                ],
              ),
            ),
           Divider(
             height: 20,
             thickness: 1,
           ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text('1 x Paneer Dum Biryani',style: TextStyle(fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150,top: 10),
              child: Text('1 x Veg Hyderabadi Dum Biryani'),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 140),
                  child: Text('Your food is preparing'),
                ),
                Text('₪200')
              ],
            ),
            Divider(
              height: 20,
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}
