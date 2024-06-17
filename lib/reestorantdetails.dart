import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yalla/viewcart.dart';
class ItemData {
  final String imagePath;
  final String text;

  ItemData({required this.imagePath, required this.text});



}
class reestorantdetails extends StatefulWidget {
  const reestorantdetails({super.key});

  @override
  State<reestorantdetails> createState() => _reestorantdetailsState();
}

class _reestorantdetailsState extends State<reestorantdetails> {
  List<ItemData> datalist =[
  ItemData(imagePath:'assets/paneer.png',text: 'Paneer Dum Biryani [1/2 Kg] \n Serves 1-2'),
    ItemData(imagePath:'assets/Hedrabaadi.png',text: 'Veg Hyderabadi Dum Biryani [1/2 Kg] \n Serves 1-2'),
    ItemData(imagePath:'assets/Egg.png',text: 'Egg Dum Biryani [1/2 Kg] \n Serves 1-2'),
  ];
  int counter = 0;
  bool isVisible = true;
  bool isPlus = false;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            iconSize: 20,
            icon: const Icon(Icons.arrow_back_ios,color: Colors.red,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              'Biryani By Kilo',
              style: TextStyle(fontSize: 25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.stars,
                  color: Colors.yellow,
                ),
                Text(
                  '4.2 • 40 mins',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Text(
                'Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore.'),
            Divider(
              height: 50,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5,left: 10),
              child: Text('Zeid Alexander'),
            ),
            Image.asset('assets/Line.png',),
            Padding(
              padding: const EdgeInsets.only(left: 10,),
              child: Text("La Guardia"),
            ),
            Divider(
              height: 50,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Icon(Icons.directions_bike,color: Colors.red,),
                  Text('0.5 kms  |  ₪20 Delivery fee will apply'),

                ],
              ),
            ),
            Divider(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Recommended (50)',
                style: TextStyle(fontSize: 20),
              ),
            ),
            // SizedBox(height: 500,
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: datalist.length,
                itemBuilder: (BuildContext context, int index) {
                  ItemData item = datalist[index];
                  return Container(
                      margin: EdgeInsets.all(5),
                      child: Stack(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 250),
                              child: Container(
                                  height: 20,
                                  width: 70,
                                  color: Colors.redAccent,
                                  child: Text('Bestseller')),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Text(item.text,style: TextStyle(fontSize: 18),),
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  item.imagePath,
                                  height: 100,
                                  width: 100,
                                ),


                              ],
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.only(left: 240,top: 70),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Visibility(
                                    visible: isVisible,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          isPlus = true;
                                          isVisible = false;
                                        });


                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(left:10 ),
                                        child: Text("Add"),
                                      ),
                                    ),
                                  ),
                                  // SizedBox(height: 5),
                                  Visibility(
                                    visible: isPlus,
                                    child: SizedBox(
                                      width: 72,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.end,

                                        children: [

                                          SizedBox(
                                            width: 20,
                                            child: InkWell(
                                                onTap: () {
                                                  incrementCounter();
                                                },
                                                child: Icon(Icons.add)),
                                          ),
                                          Text(counter.toString()),
                                          // SizedBox(width: 5),
                                          SizedBox(
                                            width: 20,
                                            child: InkWell(
                                              onTap: () {
                                                decrementCounter();
                                              },
                                              child: Icon(Icons.remove),
                                            ),
                                          )],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 80),
                              child: Container(
                                height: 20,
                                width: 120,
                                color: Colors.yellow.shade100,
                                child: RatingBar(
                                  initialRating: 3,
                                  // Set the initial rating value
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(
                                    full: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    half: Icon(Icons.star_half),
                                    empty: Icon(Icons.star_border),
                                  ),
                                  itemSize: 20.0,
                                  // Adjust the size of the rating stars
                                  itemPadding:
                                  EdgeInsets.symmetric(horizontal: 2.0),
                                  onRatingUpdate: (rating) {
                                    // Handle the rating update if needed
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 300),
                              child: Icon(Icons.favorite_border,color: Colors.white,),
                            )

                          ]
                      )
                  );
                }),
            Container(
              height: 40,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.redAccent,
              ),

              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('2 item | ₪220',style: TextStyle(fontSize: 15,color: Colors.white),),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 100,top: 5),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => viewcart()));
                            },

                            child: Text('View-Cart',style: TextStyle(color: Colors.white,fontSize: 20),),
                          )),
                    ],
                  ),
                ],
              ),
            )



          ],
          ),


        ),
      ));

}
}