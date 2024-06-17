import 'package:flutter/material.dart';
class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Payment'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Padding(
        padding: const EdgeInsets.only(top: 20,left:25 ),
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
                padding: const EdgeInsets.all(12),
                child: Text('Payment method',style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Credit/Debit Card'),
                    Icon(Icons.radio_button_checked,color: Colors.redAccent)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,bottom: 10),
                child: Text('7894 5612 3078 ****'),
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('+Add new card',style: TextStyle(fontSize: 15,color: Colors.redAccent),),
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Google Pay'),
                    Icon(Icons.radio_button_off),
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Apple Pay'),
                    Icon(Icons.radio_button_off),
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Cash on Delivery '),
                    Icon(Icons.radio_button_off),
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),



        ],
        ),
        ),
    );

  }
}
