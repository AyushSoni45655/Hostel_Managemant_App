import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hostel_managemant_application/screen/room.dart';

class Services{
  String ?title;
  String ? imagee;
  Services({this.imagee,this.title});
}
List<Services> serviceAccess = [
  Services(imagee: "asset/image2/rable.jpg",title: "Rooms",),
   Services(imagee: "asset/image2/change.png",title: "Change Request"),
  Services(imagee: "asset/image2/issue.webp",title: "All Issues"),
  Services(imagee: "asset/image2/staff.png",title: "Create \n Staff"),
  Services(imagee: "asset/image2/hostal.png",title: "Hostel \n Fees"),
  Services(imagee: "asset/image2/boy.png",title: "Staff \n Member")
];

// Student issues
class studentIssues{
  String ?UserName;
  String ? roomNumber;
  String ? imagee;
  String ? name;
  String ? mail;
  String ? phone;
  String ? issue;
  String ? comment;
  String ? status;
  String ? block;
  String ? cRoom;
  String ? cBlock;
  String ? reject;
  String ?  approve;
  String ? reason;
  studentIssues({this.approve,this.reject,this.cRoom,this.cBlock,this.block,this.reason,
    this.imagee,this.name,this.mail,this.comment,this.issue,this.phone,this.roomNumber,this.UserName,this.status});
}
List<studentIssues> dataAccess = [
  studentIssues(
      imagee: "asset/image2/boy.png",
      name: "Himanshu Shrivastav",
      mail: "himanshu12@gmail.com",
      phone: "+91 12345-98745",
      roomNumber: "203",
      issue: "Water Issue",
      comment: "Geyser not working",
      UserName: "Himanshu",
      status: "Resolve",
    block: "BB",
    approve: "Approved",
    reject: "Reject",
    cBlock: "BA",
    cRoom: "265",
    reason: "Noise Pollution"
  ),
  studentIssues(
      imagee: "asset/image2/boy.png",
      name: "Ankush Namdev",
      mail: "ankush678@gmail.com",
      phone: "+91 28495-08745",
      roomNumber: "133",
      issue: "Food Issue",
      comment: "Chef not making tasty food",
      UserName: "Ankush",
      status: " Not Resolve",
    block: "D",
    approve: "Approved",
    reject: "Reject",
    cBlock: "A",
    cRoom: "84",
    reason: "Electricity Problem"
  ),
  studentIssues(
      imagee: "asset/image2/boy.png",
      name: "Shiva Soni",
      mail: "shiva7832@gmail.com",
      phone: "+91 43549-97625",
      roomNumber: "215",
      issue: " Cleaning Issues",
      comment: "Sweeper not doing dusting ",
      UserName: "Shiva",
      status: "Pending",
    block: "DC",
    approve: "Approved",
    reject: "Reject",
    cBlock: "CB",
    cRoom: "201",
    reason:  "Water Leakage"
  ),
  studentIssues(
      imagee: "asset/image2/boy.png",
      name: "Pankaj Soni",
      mail: "pankaj873@yahoo.com",
      phone: "+91 23000-90095",
      roomNumber: "118",
      issue: "Ragging Issues",
      comment: "Senior take ragging junior Student",
      UserName: "Pankaj",
      status: "Resolve",
    block: "AE",
    approve: "Approved",
    reject: "Reject",
    cBlock: "F",
    cRoom: "17",
    reason: "Disturbance"
  ),
  studentIssues(
      imagee: "asset/image2/boy.png",
      name: "Vansh Gupta",
      mail: "guptaVansh11@gmail.com",
      phone: "+91 67548-90000",
      roomNumber: "208",
      issue: "Play Ground",
      comment: "Student doesn't any play ground",
      UserName: "Vansh",
      status: "Not Resolve",
    block: "FC",
    approve: "Approved",
    reject: "Reject",
    cBlock: "AD",
    cRoom: "269",
    reason: "Cleaning Problems"
  )
];
//room availability
class rooms{
  String ?block;
  String ? capacity;
  String ? curruntCap;
  String ? type;
  String ? ststus;
  String ? roomNo;
  String ? imagee;
  rooms({this.block,this.imagee,this.roomNo,this.capacity,this.curruntCap,this.ststus,this.type});
}
//Make a list for the model class
List<rooms>  accessRoom = [
  rooms(block: "AA",imagee: "asset/image3/ac.jpeg",capacity: "2",curruntCap: "4",roomNo: "101",ststus: "Available",type: "AC"),
  rooms(block: "CA",imagee: "asset/image3/nonAc.jpg",capacity: "3",curruntCap: "5",roomNo: "104",ststus: "Unavailable",type: "Non-AC"),
  rooms(block: "BD",imagee: "asset/image3/delux.jpeg",capacity: "4",curruntCap: "5",roomNo: "135",ststus: "Booked",type: "Deluxe"),
  rooms(block: "DE",imagee: "asset/image3/nonDel.webp",capacity: "3",curruntCap: "4",roomNo: "205",ststus: "Available",type: "Non-Deluxe"),
  rooms(block: "BF",imagee: "asset/image3/luxury.jpeg",capacity: "5",curruntCap: "7",roomNo: "232",ststus: "Booked",type: "Luxury"),
  rooms(block: "VA",imagee: "asset/image3/ac.jpeg",capacity: "3",curruntCap: "6",roomNo: "245",ststus: "Available",type: "AC"),
  rooms(block: "DA",imagee: "asset/image3/nonAc.jpg",capacity: "1",curruntCap: "3",roomNo: "264",ststus: "Unavailable",type: "Non-AC"),
  rooms(block: "BD",imagee: "asset/image3/delux.jpeg",capacity: "4",curruntCap: "5",roomNo: "273",ststus: "Booked",type: "Deluxe"),
  rooms(block: "FF",imagee: "asset/image3/nonDel.webp",capacity: "2",curruntCap: "5",roomNo: "301",ststus: "Available",type: "Non-Deluxe"),
  rooms(block: "EA",imagee: "asset/image3/luxury.jpeg",capacity: "3",curruntCap: "7",roomNo: "11",ststus: "Booked",type: "Luxury"),
  rooms(block: "GF",imagee: "asset/image3/ac.jpeg",capacity: "7",curruntCap: "4",roomNo: "74",ststus: "Available",type: "AC"),
  rooms(block: "JS",imagee: "asset/image3/nonAc.jpg",capacity: "5",curruntCap: "2",roomNo: "82",ststus: "Unavailable",type: "Non-AC"),
  rooms(block: "WA",imagee: "asset/image3/delux.jpeg",capacity: "3",curruntCap: "1",roomNo: "197",ststus: "Booked",type: "Deluxe"),
  rooms(block: "HF",imagee: "asset/image3/nonDel.webp",capacity: "4",curruntCap: "6",roomNo: "195",ststus: "Available",type: "Non-Deluxe"),
  rooms(block: "UB",imagee: "asset/image3/luxury.jpeg",capacity: "2",curruntCap: "5",roomNo: "27",ststus: "Booked",type: "Luxury"),

];