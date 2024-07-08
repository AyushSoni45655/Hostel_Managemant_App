import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:hostel_managemant_application/utility/utils.dart';

Future<User?> CreateAccount(
    String name,
    String email,
    String password,
    String cPassword,
    String roomNo,
    String blocNo,
    String phoneNo
    )async{
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _fire = FirebaseFirestore.instance;
  try{
    User? user = (await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
    )).user;
    if(user != null){
      await _fire.collection("Person").doc(_auth.currentUser!.uid).set({
        "Name" : name,
        "Email": email,
        "Status": "Unavailable",
        "Phone" : phoneNo,
        "Room" : roomNo,
        "Bloc" : blocNo

      });
      Utils().toastMessage("Account Created");
      return user;
    }
  }catch(e){
    if(kDebugMode){
      print(e);
    }
    Utils().toastMessage("Account failed");
    return null;
  }
  return null;
}
// login function
Future<User?> Login(String email, String password)async{
  FirebaseAuth _auth = FirebaseAuth.instance;
  try{
    User? user = (await _auth.signInWithEmailAndPassword(email: email, password: password)).user;
    if(user != null){

      Utils().toastMessage("Login Successful");
      return user;
    }
    else{
      Utils().toastMessage("Login Failed");
      return user;
    }

  }catch(e){
    if(kDebugMode){
      print(e);
      Utils().toastMessage("Login Failed");
      return null;
    }
  }
}

