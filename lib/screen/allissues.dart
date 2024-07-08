import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hostel_managemant_application/model/service.dart';
class AllIssues extends StatefulWidget {
  const AllIssues({super.key});

  @override
  State<AllIssues> createState() => _AllIssuesState();
}

class _AllIssuesState extends State<AllIssues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(" Student Issue",style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 1,
        ),),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: const Icon(CupertinoIcons.left_chevron,size: 30,color: Colors.white,)),
        elevation: 2,
        centerTitle: true,
        backgroundColor: Colors.green.shade300,
      ),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: GridView.builder(
          itemCount: dataAccess.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              mainAxisExtent: 290,
              mainAxisSpacing: 40
            ),
            itemBuilder: (context,index){
              return Container(
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight ,
                    colors: [
                      Colors.green.shade400,Colors.white
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
                              color: Colors.grey
                            ),)
                          ],
                        ),
                      ),
                      Positioned(
                        top: 35,
                        left: 120,
                        child: Row(
                          children: [
                            Text("Room No. : ",style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight:FontWeight.w900,
                            ),),
                            SizedBox(width: 10,),
                            Text(dataAccess[index].roomNumber.toString(),style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                                color: Colors.grey
                            ),)
                          ],
                        ),
                      ),
                      Positioned(
                        top: 55,
                        left: 120,
                        child: Row(
                          children: [
                            Text("Phone No. : ",style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight:FontWeight.w900,
                            ),),
                            SizedBox(width: 10,),
                            Text(dataAccess[index].phone.toString(),style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 12,
                                color: Colors.grey
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
                                color: Colors.grey
                            ),)
                          ],
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 15,
                        child: Row(
                          children: [
                            Text("Issue : ",style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                              color: Colors.black,
                            ),),
                            Text(dataAccess[index].issue.toString(),style: TextStyle(
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
                            Text("Comment : ",style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                              color: Colors.black,
                            ),),
                            Text(dataAccess[index].comment.toString(),style: TextStyle(
                              color: Colors.black45,
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                            ),),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 220,
                        left: 120,
                        child: Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.blue.withOpacity(0.7),
                                Colors.grey.withOpacity(0.5)
                              ]
                            ),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0)
                            ),
                          ),
                          child: Center(child: Text(dataAccess[index].status.toString(),style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 2,
                          ),),),
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
