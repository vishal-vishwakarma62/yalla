import 'package:flutter/material.dart';
import 'package:yalla/payment.dart';
class placeorder extends StatefulWidget {
  const placeorder({super.key});

  @override
  State<placeorder> createState() => _placeorderState();
}

class _placeorderState extends State<placeorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        //title: Text('place-order'),
        leading: IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,left:20 ),
              child: Text('Biryani By Kilo | Delivery in 40 mins'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, ),
              child: Image.asset('assets/Line.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 15),
              child: Text('Home | Lorem ipsum dolor sit amet elit sed eiusmod...'),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                   backgroundImage: AssetImage('assets/paneer.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Paneer Dum Biryani \n ₪100'),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: Container(
                      width: 60,
                      height: 24,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent),
                      ),
                      child: Center(child: Text('-  1  +',style: TextStyle(color: Colors.redAccent),)),
                    ),
                  )

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/Hedrabaadi.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Veg Hyderabadi Dum Biryani\n ₪120'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Container(
                      width: 60,
                      height: 24,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent),
                      ),
                      child: Center(child: Text('-  1  +',style: TextStyle(color: Colors.redAccent),)),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Bill Details',style: TextStyle(fontSize: 25),),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(' item total '),
                      ),
                      Text('SubTotal'),
                      Text('Delivery fee | 0.5 kms'),
                      Text('GST'),
                      Text('Item discount'),
                      Text('Total')
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 200,top: 30),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('2 '),
                          Text('₪220'),
                          Text('₪10'),
                          Text('₪10'),
                          Text('₪40'),
                          Text('₪200'),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => payment()));
                    },
                    child:Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: Colors.redAccent
                        ),
                        child: Center(child: Text('place order',style: TextStyle(color: Colors.white),)),
                      ),
                    )
                ),
              ),
            )

          ],

        ),


      ),
    );
  }
}
