import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hostel_managemant_application/model/service.dart';
class Room extends StatefulWidget {
  const Room({super.key});

  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rooms Availability",style: TextStyle(
          color: Colors.black,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),),
        elevation: 2,
        centerTitle: true,
        backgroundColor: Colors.green.shade600,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: const Icon(CupertinoIcons.left_chevron,size: 30,color:  Colors.black,)),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              mainAxisSpacing: 35,
              crossAxisSpacing: 10,
              mainAxisExtent: 200
            ),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: accessRoom.length,
            itemBuilder: (context,index){
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 3,color: Colors.green.shade800),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0)
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(47, 71, 79, 0.5),
                      Color.fromRGBO(159, 188, 198, 0.5)
                    ]
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 120,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 2),
                          borderRadius:const  BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)
                          )
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)
                          ),
                            child: Image.asset(accessRoom[index].imagee.toString(),fit: BoxFit.cover,)),
                      ),
                      Positioned(
                        top: 135,
                        left: 20,
                        child: Row(
                          children: [
                            Text("Room No. : ",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),),
                            Text(accessRoom[index].roomNo.toString(),style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 165,
                        child: Row(
                          children: [
                            Text("Block No. : ",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),),
                            SizedBox(width: 15.0,),
                            Text(accessRoom[index].block.toString(),style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                      Positioned(
                        top: 35,
                        left: 165,
                        child: Row(
                          children: [
                            Text("Capacity : ",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),),
                            SizedBox(width: 15.0,),
                            Text(accessRoom[index].capacity.toString(),style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                      Positioned(
                        top: 60,
                        left: 165,
                        child: Row(
                          children: [
                            Text("Currunt Capacity : ",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),),
                            SizedBox(width: 5.0,),
                            Text(accessRoom[index].curruntCap.toString(),style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                      Positioned(
                        top: 80,
                        left: 160,
                        child: Row(
                          children: [
                            Text("Room Type : ",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),),
                            SizedBox(width: 15.0,),
                            Text(accessRoom[index].type.toString(),style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.white
                            ),)
                          ],
                        ),
                      ),
                      Positioned(
                        top: 110,
                        left: 150,
                        child: Row(
                          children: [
                            Text("Status : ",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),),
                            SizedBox(width: 5.0,),
                            InkWell(
                              onTap: (){

                                setState(( ) {
                                  change;
                                });
                              },
                              child: Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: change == true ? Colors.green.shade800: Colors.red,width: 2),
                                  borderRadius:  BorderRadius.all(Radius.circular(20.0))
                                ),
                                child: Center(
                                  child: Text(accessRoom[index].ststus.toString(),style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white
                                  ),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
        )
      ),
    );
  }
}
