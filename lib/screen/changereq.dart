import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/service.dart';
class changeRequests extends StatefulWidget {
  const changeRequests({super.key});

  @override
  State<changeRequests> createState() => _changeRequestsState();
}

class _changeRequestsState extends State<changeRequests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Room Change Requests",style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
        elevation: 2,
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.green.shade600,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child:const Icon(CupertinoIcons.left_chevron,size: 30,color: Colors.black,)),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: GridView.builder(
            itemCount: dataAccess.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 300,
                mainAxisSpacing: 40
            ),
            itemBuilder: (context,index){
              return Container(
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green.shade600,width: 3),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter ,
                        colors: [
                          Color(0xffB3ACE3),
                          Color(0xff868BC9)
                        ]
                    ),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0)
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.8),
                          spreadRadius: 2,
                          blurRadius: 1
                      )
                    ]
                ),
                child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 15,
                          child: CircleAvatar(
                            radius: 40,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(dataAccess[index].imagee.toString(),fit: BoxFit.contain,)),
                          ),
                        ),
                        Positioned(
                          top: 95,
                          child: Text(dataAccess[index].name.toString(),style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 15

                          ),),
                        ),
                        Positioned(
                          top: 10,
                          left: 120,
                          child: Row(
                            children: [
                              Text("UserName : ",style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight:FontWeight.w900,
                              ),),
                              SizedBox(width: 10,),
                              Text(dataAccess[index].UserName.toString(),style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                  color: Colors.white
                              ),)
                            ],
                          ),
                        ),
                        Positioned(
                          top: 35,
                          left: 120,
                          child: Row(
                            children: [
                              Text("Current Room : ",style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight:FontWeight.w900,
                              ),),
                              SizedBox(width: 10,),
                              Text(dataAccess[index].roomNumber.toString(),style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                  color: Colors.white
                              ),)
                            ],
                          ),
                        ),
                        Positioned(
                          top: 55,
                          left: 120,
                          child: Row(
                            children: [
                              Text("Currunt Block. : ",style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight:FontWeight.w900,
                              ),),
                              SizedBox(width: 10,),
                              Text(dataAccess[index].block.toString(),style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                  color: Colors.white
                              ),)
                            ],
                          ),
                        ),
                        Positioned(
                          top: 75,
                          left: 120,
                          child: Row(
                            children: [
                              Text("Email : ",style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight:FontWeight.w900,
                              ),),
                              SizedBox(width: 10,),
                              Text(dataAccess[index].mail.toString(),style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 11,
                                  color: Colors.white
                              ),)
                            ],
                          ),
                        ),
                        Positioned(
                          top: 130,
                          left: 15,
                          child: Row(
                            children: [
                              Text("Asked for : ",style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                color: Colors.black,
                              ),),
                              SizedBox(width: 10,),
                              Text("Block : ",style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),),
                              Text(dataAccess[index].cBlock.toString(),style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),),
                              SizedBox(width: 10,),
                              Text("Room : ",style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),),
                              Text(dataAccess[index].cRoom.toString(),style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 160,
                          left: 15,
                          child: Row(
                            children: [
                              Text("Phone No. : ",style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Colors.black,
                              ),),
                              Text(dataAccess[index].phone.toString(),style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                              ),),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 180,
                          left: 15,
                          child: Row(
                            children: [
                              Text("Reason. :  ",style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: Colors.black,
                              ),),
                              Text(dataAccess[index].reason.toString(),style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                              ),),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 210,
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 140,
                                decoration: BoxDecoration(
                                  // gradient: LinearGradient(
                                  //     begin: Alignment.centerLeft,
                                  //     end: Alignment.centerRight,
                                  //     colors: [
                                  //       Colors.blue.withOpacity(0.7),
                                  //       Colors.grey.withOpacity(0.5)
                                  //     ]
                                  // ),
                                  border: Border.all(color: Colors.green.shade900,width: 3),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0)
                                  ),
                                ),
                                child: Center(child: Text(dataAccess[index].approve.toString(),style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 2,
                                ),),),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                height: 40,
                                width: 140,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red,width: 3),
                                  // gradient: LinearGradient(
                                  //     begin: Alignment.centerLeft,
                                  //     end: Alignment.centerRight,
                                  //     colors: [
                                  //       Colors.blue.withOpacity(0.7),
                                  //       Colors.grey.withOpacity(0.5)
                                  //     ]
                                  // ),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0)
                                  ),
                                ),
                                child: Center(child: Text(dataAccess[index].reject.toString(),style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 2,
                                ),),),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                ),
              );
            }
        ),
      ),
    );
  }
}
