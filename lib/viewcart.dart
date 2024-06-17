import 'package:flutter/material.dart';
import 'package:yalla/addaddress.dart';
class viewcart extends StatefulWidget {
  const viewcart({super.key});

  @override
  State<viewcart> createState() => _viewcartState();
}

class _viewcartState extends State<viewcart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
        leading: IconButton(
        iconSize: 20,
        icon: const Icon(Icons.arrow_back_ios,color: Colors.red,),
    onPressed: () {
    Navigator.pop(context);
    },
    ),
    ),
      body:
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                      child: CircleAvatar(
                       // backgroundColor: Colors.cyan,
                        backgroundImage: AssetImage('assets/paneer.png'),
                        radius: 30,
                      ),
                    ),
                    Text('Paneer Dum Biryani \n ₪100'),
                  ],
                ),
                Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                      child: CircleAvatar(
                       backgroundImage: AssetImage('assets/Hedrabaadi.png'),
                        radius: 30,
                      ),
                    ),
                    Text('Veg Hyderabadi Dum Biryani \n ₪120'),
                  ],
                ),
                Divider(
                  height: 15,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text('+ Add more items'),
                ),
                Divider(
                  height: 15,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 230),
                  child: Text('Offer & Benifits',style: TextStyle(fontSize: 18),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.white10,
                              ),


                            ),
                            hintText: 'YALLA40',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Container(
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.redAccent,
                          ),
                          child: Center(child: Text('Apply',style: TextStyle(color: Colors.white),)),
                        ),
                      ),

                    ],
                  ),
                ),
                Divider(
                  height: 15,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        padding: const EdgeInsets.only(left: 120),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return SizedBox(
                              height: 100,
                              width: 450,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children:  <Widget>[
                                    const SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20,top: 10),
                                      child:ElevatedButton(
                                        onPressed: (){
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context){
                                                return SizedBox(
                                                  height: 500,
                                                  width: 500,
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      // mainAxisSize: MainAxisSize.min,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text('Choose an delivery address',style: TextStyle(fontSize: 20) ,),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 65),
                                                              child: Icon(Icons.cancel,color: Colors.white,),
                                                            ),
                                                          ],
                                                        ),

                                                        Row(
                                                          children: [
                                                            CircleAvatar(
                                                              radius: 20,
                                                              child: Icon(Icons.location_on,color: Colors.redAccent,),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left:5,top: 5),
                                                              child: Text('Home\n Lorem ipsum dolor sit amet consectetur elit...',style: TextStyle(fontSize: 13),),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 10),
                                                              child: Icon(Icons.keyboard_arrow_right),
                                                            )

                                                            // Icon(Icons.arrow_back_ios,color: Colors.white,),

                                                          ],
                                                        ),
                                                        Divider(
                                                          height: 30,
                                                        ),
                                                        Row(
                                                          children: [
                                                            CircleAvatar(
                                                              radius: 20,
                                                              child: Icon(Icons.location_on,color: Colors.redAccent,),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 5),
                                                              child: Text('Office\nLorem ipsum dolor sit amet consectetur elit...',style: TextStyle(fontSize: 13),),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 10),
                                                              child: Icon(Icons.keyboard_arrow_right),
                                                            )
                                                          ],
                                                        ),
                                                        Divider(
                                                          height: 30,
                                                        ),
                                                        Row(
                                                          children: [
                                                            CircleAvatar(
                                                              radius: 20,
                                                              child: Icon(Icons.location_on,color: Colors.redAccent,),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 5),
                                                              child: Text('Hotel\n Lorem ipsum dolor sit amet consectetur elit...',style: TextStyle(fontSize: 13),),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 10),
                                                              child: Icon(Icons.keyboard_arrow_right),
                                                            )
                                                          ],
                                                        ),
                                                        Divider(
                                                          height: 30,
                                                        ),
                                                        Row(
                                                          children: [
                                                            CircleAvatar(
                                                              radius: 20,
                                                              child: Icon(Icons.location_on,color: Colors.redAccent,),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 5),
                                                              child: Text('Other\n Lorem ipsum dolor sit amet consectetur elit...',style: TextStyle(fontSize: 13),),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 10),
                                                              child: Icon(Icons.keyboard_arrow_right),
                                                            )
                                                          ],
                                                        ),
                                                        Divider(
                                                          height: 30,
                                                        ),
                                                        Row(
                                                          children: [
                                                            CircleAvatar(
                                                              radius: 20,
                                                              child: Icon(Icons.location_on,color: Colors.redAccent,),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 5),
                                                              child: Text('Office\n Lorem ipsum dolor sit amet consectetur elit...',style: TextStyle(fontSize: 13),),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 10),
                                                              child: Icon(Icons.keyboard_arrow_right),
                                                            )
                                                          ],
                                                        ),
                                                        Divider(
                                                          height: 30,
                                                        ),
                                                        Text('+Add new address',style: TextStyle(color: Colors.redAccent,fontSize: 15),)





                                                      ],
                                                    ),
                                                  ),
                                                );
                                              });
                                        }, child: Container(
                                          height: 40,
                                          width: 100,
                                          // decoration: BoxDecoration(
                                          //   borderRadius: BorderRadius.all(Radius.circular(12)),
                                          //   border: Border.all(color: Colors.redAccent)
                                          // ),
                                          alignment: Alignment.center,
                                          child: const Text('Select Address',style: TextStyle(color: Colors.redAccent),)),

                                      ),
                                    ),

                                    SizedBox(height: 10,),

                                    Padding(
                                        padding: const EdgeInsets.only(left: 50,top: 10,),
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => addaddress()));
                                          },

                                          child: Container(
                                            height: 50,
                                            width: 150,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                color: Colors.redAccent
                                            ),
                                            alignment: Alignment.center,

                                            child: Text('Add Address',style: TextStyle(color: Colors.white),),
                                          ),
                                        )
                                    ),




                                  ]
                              )
                          );

                        });
                  }, child: null,

                ),




              ],
            ),
          ),


    );
  }
}