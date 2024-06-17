import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:yalla/reestorantdetails.dart';
class ItemData {
  final String imagePath;
  final String text;

  ItemData({required this.imagePath, required this.text});



}
class cetegory extends StatefulWidget {
  const cetegory({super.key});

  @override
  State<cetegory> createState() => _cetegoryState();
}

class _cetegoryState extends State<cetegory> {
  List<ItemData> datalist =[
   ItemData(imagePath: 'assets/BiryanibyKilo.png', text: 'Biryani By Kilo'),
    ItemData(imagePath: 'assets/ApnaSweet.png', text: 'Apna Sweets'),
    ItemData(imagePath: 'assets/biryanionWheel.png', text: 'Birani on Wheels'),
    ItemData(imagePath: 'assets/MadniDarbar.png', text:  'Hotel madni Darbar'),
    ItemData(imagePath: 'assets/DumSafarBiryani.png', text: 'Dum safar Biryani'),
    ItemData(imagePath: 'assets/ByKilo.png', text: 'Biryani By Kilo'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Cetegory'),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
        
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                     // child: Image.asset('assets/less.png',height: 20,width: 10,),
                    ),

                    Text('Biryani',style: TextStyle(fontSize: 20),),
                  ],
                ),
            Padding(
              padding: const EdgeInsets.only(right: 80,top: 10),
              child: Text('All Restaurants Delivering Biryani',style: TextStyle(fontSize: 20),),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const reestorantdetails()),
                );
              },
            child:ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              //scrollDirection: Axis.vertical,
                itemCount: datalist.length,
                itemBuilder: (context, index) {
                  ItemData item  = datalist[index];
                  return Container(
                      margin: EdgeInsets.only(top: 20,left: 20),
                      child: Row(
                          children: [
                               Image.asset(
                                item.imagePath,
                                height: 110,
                                width: 100,
                              ),
                            Column(
                              children: [
                                SizedBox(height: 10),
                                Text(item.text,style: TextStyle(fontSize: 20),),
                               Padding(
                                 padding: const EdgeInsets.only(right: 40),
                                 child: Row(
                                   children: [
                                     Icon(Icons.star,color: Colors.yellow,),
                                     Text('4.2 • 40 mins')
                                   ],
                                 ),
                               ),
                               // ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('17, HaHarash Kiryat Shalom, \n Tel Aviv-Yafo Tel Aviv District'),
                                )
                              ],
                            )

                          ]  )
                  );
                },
            ),
    ),
        
       ] ),
      ),

      );

  }
}
