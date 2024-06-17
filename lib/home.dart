import 'package:flutter/material.dart';
import 'package:yalla/cetegory.dart';
import 'package:yalla/profile.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  List<ItemData> datalist =[
    ItemData(imagePath: 'assets/thali.png', text: 'Thali' ),
    ItemData(imagePath: 'assets/biryani.png', text: 'Biryani'),
    ItemData(imagePath: 'assets/burger.png', text: 'Burger'),
    ItemData(imagePath: 'assets/pizza.png', text: 'Pizza')
  ];
  List<ItemData> datalist1 =[
    ItemData(imagePath: 'assets/chinese.png', text: 'chinese' ),
    ItemData(imagePath: 'assets/cake.png', text: 'Biryani'),
    ItemData(imagePath: 'assets/paneer1.png', text: 'Burger'),
    ItemData(imagePath: 'assets/sandwich.png', text: 'Pizza')
  ];
  List<ItemData> datalist3 =[
    ItemData(imagePath: 'assets/BiryanibyKilo1.png', text: 'Biryani By Kilo', ),
    ItemData(imagePath: 'assets/ApnaSweet1.png', text: 'Apna Sweet'),
    ItemData(imagePath: 'assets/Bykilo1.png', text: 'By kilo'),

  ];
  List<ItemData> datalist4 =[
    ItemData(imagePath: 'assets/Biryani1.png', text: 'Biryani By Kilo', ),
    ItemData(imagePath: 'assets/Biryani2.png', text: 'Biryani By Kilo'),
    ItemData(imagePath: 'assets/Biryani3.png', text: 'Biryani By Kilo'),

  ];



  @override
  Widget build(BuildContext context) {

    return Scaffold (
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/Vector.png',height: 30,),
                  Text('17 Saharov St',style: TextStyle(fontSize: 20),),
                  Image.asset('assets/vector1.png'),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => profile()));
                    },
               child:   Padding(
                    padding: const EdgeInsets.only(left: 180),
                    child: Image.asset('assets/Ellipse 1.png'),
                  )
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Behind mall, Rishon Lezion 987456, Israel'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 30,right: 30),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '   Search Food',
                  prefix: Icon(Icons.search)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 10),
              child: Text('Recommended for you',style: TextStyle(fontSize: 25),),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
                childAspectRatio: 4/2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 80,
                  width: 166,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Colors.white
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/rectangle17.png',height: 120,),
                      Column(
                        children: [
                          Text('Delectable \n delights-S...'),
                          Text('North Indian',style: TextStyle(fontSize: 12),),
                         Row(
                           children: [
                             Icon(Icons.access_time),
                             Text('50-55 min')
                             
                           ],
                         ),

                        ],

                      ),

                    ],
                  ),

                );
              },
                ),
           Padding(
             padding: const EdgeInsets.only(top: 20,left: 25),
             child: Text("What's on your mind?",style: TextStyle(fontSize: 25),),

           ),
        SizedBox(
          width: double.infinity,
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
          itemCount: datalist.length,
            // list item builder
            itemBuilder: (BuildContext ctx, index) {
              ItemData item=datalist[index];
              return Container(
                //key: ValueKey(myData[index]),
                margin: const EdgeInsets.all(15),
                width: 150,
                //alignment: Alignment.center,
                child: Column(
                  children: [
                    Image.asset(
                      item.imagePath,
                    ),
                    Text(item.text)
                  ],
                ),
              );

            },
          ),

        ),
            SizedBox(
              width: double.infinity,
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: datalist1.length,
                // list item builder
                itemBuilder: (BuildContext ctx, index) {
                  ItemData item=datalist1[index];
                  return Container(
                    //key: ValueKey(myData[index]),
                    margin: const EdgeInsets.all(15),
                    width: 150,
                    //alignment: Alignment.center,
                    child: Column(
                      children: [
                        Image.asset(
                          item.imagePath,
                        ),
                        Text(item.text)
                      ],
                    ),
                  );

                },
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text('Top rated near you',style: TextStyle(fontSize: 25),),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const cetegory()),
                );
              },
            child:SizedBox(
              width: double.infinity,
              height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: datalist3.length,
                // list item builder
                itemBuilder: (BuildContext ctx, index) {
                  ItemData item=datalist3[index];
                  return Container(
                    //key: ValueKey(myData[index]),
                    margin: const EdgeInsets.all(15),
                    width: 140,
                    //alignment: Alignment.center,
                    child: Column(
                      children: [
                        Image.asset(
                          item.imagePath,
                        ),
                        Text(item.text),
                        Row(
                          children: [
                            Icon(Icons.stars,color: Colors.orange,),
                            Text('4.1 • 40 mins')
                          ],
                        )
                      ],
                    ),
                  );

                },
              ),

            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 25),
              child: Text('500 Restorent to explore',style: TextStyle(fontSize: 25),),
            ),
               ListView.builder(
                 shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.vertical,
                itemCount: datalist4.length,
                // list item builder
                itemBuilder: (BuildContext ctx, index) {
                  ItemData item=datalist4[index];
                  return Container(
                    //key: ValueKey(myData[index]),
                    margin: const EdgeInsets.all(15),
                    width: 140,
                    //alignment: Alignment.center,
                    child: Column(
                      children: [
                        Image.asset(
                          item.imagePath,
                          height: 156,
                          width: 360,

                        ),



                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 60),
                                        child: Text(item.text,style: TextStyle(fontSize: 18),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 60),
                                        child: Icon(Icons.stars,color: Colors.yellow,),
                                      ),
                                      Text('4.1 • 40 mins')
                                    ],


                                  ),
                        Padding(
                          padding: const EdgeInsets.only(right: 180,top: 10),
                          child: Text('13, HaDuchifat'),
                        )



                     ],

                    ),

                 );

                },
              ),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Container(
                height: 60,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black
                ),
                child: Center(child: Text('2 item | ₪100\nCheckout',style: TextStyle(color: Colors.white),)),
              ),
            )
    
          ],
        ),




      ),
      
     );

  }
}
class ItemData {
  final String imagePath;
  final String text;

  ItemData({required this.imagePath, required this.text});



}
