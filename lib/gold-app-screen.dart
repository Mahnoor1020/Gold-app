import 'package:flutter/material.dart';


class GoldApp extends StatefulWidget {
  const GoldApp({super.key});

  @override
  State<GoldApp> createState() => _GoldAppState();
}

class _GoldAppState extends State<GoldApp> {

  TextEditingController tolaPriceController= TextEditingController();
  TextEditingController tolaQuantityController= TextEditingController();
  TextEditingController mashaQuantityController= TextEditingController();
  TextEditingController rattiQuantityController= TextEditingController();
  TextEditingController pointsQuantityController= TextEditingController();
  double totalPrice = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Gold Calculator',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      
      floatingActionButton: FloatingActionButton(onPressed: () {
        tolaQuantityController.clear();
        tolaPriceController.clear();
        mashaQuantityController.clear();
        rattiQuantityController.clear();
        setState(() {

        });
      },
      backgroundColor: Colors.redAccent,child: Icon(Icons.cleaning_services_rounded),),
      body: Column(children: [
        ///TODO:tola price text form field
Container(
  padding: EdgeInsets.only(left: 10),
  margin: EdgeInsets.only(left:40,right: 40,top: 20),
  decoration: BoxDecoration(
    border: Border.all(color:Colors.redAccent),
    borderRadius: BorderRadius.circular(50),
  ),
  child: TextFormField(
    style: TextStyle(color: Colors.redAccent),
    controller: tolaPriceController,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(hintText: 'Enter Per Tola Price',
        border: InputBorder.none,
      hintStyle: TextStyle(color: Colors.redAccent),
      icon: Icon(Icons.pin_end,color: Colors.redAccent,)
    ),
  ),
),
        
        ///TODO:tola quantity text form field
        Container(
          padding: EdgeInsets.only(left: 10),
          margin: EdgeInsets.only(left:40,right: 40,top: 20,bottom: 20),
          decoration: BoxDecoration(
            border: Border.all(color:Colors.redAccent),
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextFormField(
            style: TextStyle(color: Colors.redAccent),
            controller: tolaQuantityController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: 'Enter Numbers of Tola ',
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.redAccent),
                icon: Icon(Icons.format_list_numbered,color: Colors.redAccent,)
            ),
          ),
        ),

        ///TODO:Masha quantity text form field
        Container(
          padding: EdgeInsets.only(left: 10),
          margin: EdgeInsets.only(left:40,right: 40,top: 5,bottom: 20),
          decoration: BoxDecoration(
            border: Border.all(color:Colors.redAccent),
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextFormField(
            style: TextStyle(color: Colors.redAccent),
            controller: mashaQuantityController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: 'Enter Masha Quantity ',
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.redAccent),
                icon: Icon(Icons.production_quantity_limits,color: Colors.redAccent,)
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.only(left: 10),
          margin: EdgeInsets.only(left:40,right: 40,top: 5,bottom: 5),
          decoration: BoxDecoration(
            border: Border.all(color:Colors.redAccent),
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextFormField(
            style: TextStyle(color: Colors.redAccent),
            controller: rattiQuantityController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: 'Enter Ratti Quantity ',
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.redAccent),
                icon: Icon(Icons.production_quantity_limits,color: Colors.redAccent,)
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.only(left: 10),
          margin: EdgeInsets.only(left:40,right: 40,top: 20,bottom: 20),
          decoration: BoxDecoration(
            border: Border.all(color:Colors.redAccent),
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextFormField(
            style: TextStyle(color: Colors.redAccent),
            controller: pointsQuantityController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: 'Enter Points Quantity',
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.redAccent),
                icon: Icon(Icons.production_quantity_limits,color: Colors.redAccent,)
            ),
          ),
        ),

        Text('Total Price: $totalPrice',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.redAccent),),

        ///TODO:Calculator Button
      GestureDetector(
        onTap: (){
          if(tolaPriceController.text=='')
            {
              tolaPriceController.text='0';
            setState(() {

            });
            }
          if( tolaQuantityController.text=='')
            {
              tolaQuantityController.text=='0';
                  setState(() {


                  });
            }

          if(mashaQuantityController.text=='') {
            mashaQuantityController.text=='0';
             setState(() {

            });
          }
          if (rattiQuantityController.text==''){
            rattiQuantityController.text=='0';
            setState(() {

            });
          }

          if(pointsQuantityController.text=='')
          {
            pointsQuantityController.text='0';
            setState(() {

            });
          }

          double tolaPrice = double.parse(tolaPriceController.text);
          double tolaQuantity= double.parse(tolaQuantityController.text);

          //Masha formula
          //To get 1 masha price
          double pricePerMasha = tolaPrice/12;

          double mashaQuantity = double.parse(mashaQuantityController.text);
          //total price of masha quantity entered
          double totalPriceMasha = pricePerMasha * mashaQuantity;

          //ratti quantity
          //to fetch ratti quantity from text field
          double rattiQuantity = double.parse(rattiQuantityController.text);
          //to find price of 1 ratti
          double pricePerRatti = tolaPrice/96;
          //to get total price of ratti quantity
          double totalPriceRatti = pricePerRatti * rattiQuantity;
double pricePerPoint = totalPrice/320;
double pointsQuantity = double.parse(pointsQuantityController.text);
double totalPricePoints= pricePerPoint * pointsQuantity;
          //totalPrice = (tolaPrice * tolaQuantity) + totalPriceMasha * totalPriceRatti;
          totalPrice = (tolaPrice * tolaQuantity) + totalPriceMasha + totalPriceRatti + totalPricePoints;

          totalPrice = totalPrice + totalPriceMasha;
          setState(() {

          });



        },
        child: Container(
          margin: EdgeInsets.only(top:20),
          height: 50,
          width: 150,
          decoration: BoxDecoration(color: Colors.redAccent,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(child: Text('Calculate',style:TextStyle(fontWeight: FontWeight.bold),),),
        ),
      )
      ],),
    );
  }
}
