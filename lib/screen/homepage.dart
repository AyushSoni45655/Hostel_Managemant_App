import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hostel_managemant_application/model/service.dart';
import 'package:hostel_managemant_application/screen/allissues.dart';
import 'package:hostel_managemant_application/screen/changereq.dart';
import 'package:hostel_managemant_application/screen/hotelfee.dart';
import 'package:hostel_managemant_application/screen/person.dart';
import 'package:hostel_managemant_application/screen/room.dart';
import 'package:hostel_managemant_application/screen/staff.dart';
import 'package:hostel_managemant_application/utility/utils.dart';
import 'package:image_picker/image_picker.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File ?_image;
  final picker = ImagePicker();
  Future getImage()async{
    final pickedImage =  await picker.pickImage(source: ImageSource.gallery);
    // condition checked
    setState(() {
      pickedImage == _image;
    });
    if(pickedImage != null){
      _image = File(pickedImage.path);
    }
    else{
      print("Image Not found");
    }
  }
  List navScreen = [
    Room(),
    changeRequests(),
    AllIssues(),
    Staff(),
    HostelFee(),
    Person()
  ];
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(CupertinoIcons.left_chevron,size: 30,color: Colors.black,),
        title: Text("Dashboard",style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20,top: 10),
            child: InkWell(
              onTap: (){
                getImage();
              },
              child: CircleAvatar(
                radius: 25,
                foregroundColor: Colors.black,
                child: _image != null ? ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                    child: Image.file(_image!,fit: BoxFit.cover,width: 100,height: 100,)):Icon(CupertinoIcons.person,size: 35,),
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 20,),
            Container(
              height: size.height / 5.5,
              width: size.width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green,width: 2.0),
                borderRadius: BorderRadius.circular(24.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 1
                  )
                ]

              ),
              child: StreamBuilder(
                  stream: _firestore.collection("Person").snapshots(),
                  builder: (context,snapshot){
                    if(snapshot.connectionState == ConnectionState.active){
                      if(snapshot.hasData){
                        return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context,index){
                              return Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("${snapshot.data!.docs[index]["Name"].toString()}",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26,
                                          color: Colors.brown
                                        ),)
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Email :",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),),
                                        SizedBox(width: 25,),
                                        Text("${snapshot.data!.docs[index]["Email"].toString()}",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.black45
                                        ),)
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Mobile No. :",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),),
                                        SizedBox(width: 25,),
                                        Text("${snapshot.data!.docs[index]["Phone"].toString()}",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Colors.black45
                                        ),)
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Room No :",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),),
                                        SizedBox(width:12,),
                                        Text("${snapshot.data!.docs[index]["Room"].toString()}",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Colors.black45
                                        ),),
                                        SizedBox(width: 20,),
                                        Text("Bloc No :",style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),),
                                        SizedBox(width:12,),
                                        Text("${snapshot.data!.docs[index]["Bloc"].toString()}",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Colors.black45
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                              );
                            }
                        );
                      }else if(snapshot.hasError){
                        return Center(child: Text(snapshot.hasError.toString()),);
                      }
                      else{
                        return const Center(child: Text("No Data found"),);
                      }
                    }
                    else{
                      return const Center(child: SpinKitCircle( color: Colors.black,size: 30,),);
                    }
                  }
              ),
            ),
            const SizedBox(height: 25.0,),
            Container(
              height: size.height / 1.9,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.2),
                border: Border.all(color: Colors.green,width: 2),
                borderRadius: BorderRadius.circular(22.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Categories",style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),),
                     SizedBox(height: 15.0,),
                    GridView.builder(
                      itemCount: serviceAccess.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          crossAxisSpacing: 15.0,
                          mainAxisSpacing: 15.0,
                          mainAxisExtent: 145
                        ),
                        itemBuilder: (context,index){
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>navScreen[index] ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white,
                                border: Border.all(color: Colors.black,width: 2)
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    SizedBox(height: 5,),
                                    Image.asset(serviceAccess[index].imagee.toString(),fit: BoxFit.fill),
                                    Text(serviceAccess[index].title.toString(),style: TextStyle(
                                      fontSize: 14
                                    ),
                                      textAlign: TextAlign.center,
                                    )

                                  ],
                                ),
                              ),
                            ),
                          );
                        }
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
