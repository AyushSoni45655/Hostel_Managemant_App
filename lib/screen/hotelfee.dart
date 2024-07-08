import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HostelFee extends StatefulWidget {
  const HostelFee({super.key});

  @override
  State<HostelFee> createState() => _HostelFeeState();
}

class _HostelFeeState extends State<HostelFee> {
  var times = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Hostel fee",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white,
        ),),
        backgroundColor: Colors.lightGreen,
          centerTitle: true,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: const Icon(CupertinoIcons.left_chevron,size: 30,color: Colors.black,)),
        automaticallyImplyLeading: false,
        elevation: 2,

      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 30),
              child: Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  border: Border.all(width: 3,color: Colors.green.shade600),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Image.asset("asset/image2/ehsan.png",fit: BoxFit.cover,),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height:500,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  //topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.white,
                    Colors.green.shade300
                  ]
                ),
                border: Border.all(width: 3,color: Colors.green.shade600)
              ),
              child:  Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hostel details",style: TextStyle(
                      color: Colors.black,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Bloc No. :",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black,
                        ),),
                        SizedBox(width: 15,),
                        Text("BB",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(width: 60,),
                        Text("Room No. :",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black,
                        ),),
                        SizedBox(width: 15,),
                        Text("256",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Text("Payment details",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                      letterSpacing: 1
                    ),),
                    SizedBox(height: 15.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Maintanance charge :-",style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("1000.00",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 15

                        ),)
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Parking charge :-",style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("500.00",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15

                        ),)
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Room Water charge :-",style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("500.00",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15

                        ),)
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Mesh Food Rent :-",style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("50,000.00",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15

                        ),)
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Room charge :-",style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("35000.00",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15

                        ),)
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Other charge :-",style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("1000.00",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15

                        ),)
                      ],
                    ),
                    Divider(height: 45,color: Colors.black,),
                    Text("Payble Ammount :",style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 15.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total charges :-",style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("88,000.00",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15

                        ),)
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Text('Time: ${times.hour}:${times.minute}:${times.second}\n Date : ${times.day}:${times.month}:${times.year}',style: TextStyle(
                      color: Colors.black,
                      fontSize: 16
                    ),)
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
