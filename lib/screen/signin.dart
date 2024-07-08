
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hostel_managemant_application/auth/methods.dart';
import 'package:hostel_managemant_application/screen/login.dart';
import 'package:hostel_managemant_application/utility/utils.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool loading = false;
  TextEditingController nameCon = TextEditingController();
  TextEditingController mailCon = TextEditingController();
  TextEditingController passCon = TextEditingController();
  TextEditingController cPassCon = TextEditingController();
  TextEditingController bCon = TextEditingController();
  TextEditingController rCon = TextEditingController();
  TextEditingController phoneCon = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff272727),
      body:loading == true? const Center(child: SpinKitCircle(color: Colors.green,size: 30,),): Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            scrollDirection: Axis.vertical,
            children:[
              Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100,),
                Container(

                  alignment: Alignment.center,
                  //height: 40,
                  decoration: BoxDecoration(
                    //color: Colors.blue,
                  ),
                  child: Text("Create Account",style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontStyle: FontStyle.italic
                  ),),
                ),

                SizedBox(height: 50,),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber),
                        borderRadius: BorderRadius.circular(18.0)
                    ),
                    height: 45,
                    child: TextFormField(
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Enter name";
                        }
                        return null;

                      },
                      controller: nameCon,

                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 80),
                          //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                          hintText: "Enter your Name",
                          // labelText: "Password",
                          // labelStyle: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 20
                          // ),
                          hintStyle: TextStyle(
                              color: Colors.white
                          ),
                          prefixIcon: Icon(CupertinoIcons.person,size: 30,color: Colors.amber,)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,),
                Center(
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      border: Border.all(color: Colors.amber),
                    ),
                    child: TextFormField(
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Enter mail";
                        }
                        bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
                        ).hasMatch(value);
                        if(!emailValid){
                          return "Enter valid Email";
                        }
                      },
                      controller: mailCon,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top:80),
                          //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                          hintText: "Enter your mail",
                          border: InputBorder.none,
                          // labelText: "Email",
                          //
                          // labelStyle: TextStyle(
                          //   color: Colors.white,
                          //   fontSize: 20
                          // ),
                          hintStyle: TextStyle(
                              color: Colors.white
                          ),
                          prefixIcon: Icon(CupertinoIcons.mail,size: 30,color: Colors.amber,)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber),
                        borderRadius: BorderRadius.circular(18.0)
                    ),
                    height: 45,
                    child: TextFormField(
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Enter password";
                        }
                        else if(passCon.text.length < 6){
                          return "Password must be 6 digit";
                        }

                      },
                      controller: passCon,

                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 80),
                          //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                          hintText: "Enter your password",
                          // labelText: "Password",
                          // labelStyle: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 20
                          // ),
                          hintStyle: TextStyle(
                              color: Colors.white
                          ),
                          prefixIcon: Icon(CupertinoIcons.lock_fill,size: 30,color: Colors.amber,)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber),
                        borderRadius: BorderRadius.circular(18.0)
                    ),
                    height: 45,
                    child: TextFormField(
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Enter confirm password";
                        }
                        else if(value != passCon.text.toString()  ){
                          return "Confim Password must be same";
                        }

                      },
                      controller: cPassCon,

                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 80),
                          //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                          hintText: "Enter your Confirm password",
                          // labelText: "Password",
                          // labelStyle: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 20
                          // ),
                          hintStyle: TextStyle(
                              color: Colors.white
                          ),
                          prefixIcon: Icon(CupertinoIcons.lock_fill,size: 30,color: Colors.amber,)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Container(
                        width: 155,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.amber),
                            borderRadius: BorderRadius.circular(18.0)
                        ),
                        height: 45,
                        child: TextFormField(
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return "Enter bloc No..";
                            }
                            return null;

                          },
                          controller: bCon,

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 10,left: 20,bottom: 10),
                              //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                              hintText: "Bloc No...",
                              // labelText: "Password",
                              // labelStyle: TextStyle(
                              //     color: Colors.white,
                              //     fontSize: 20
                              // ),
                              hintStyle: TextStyle(
                                  color: Colors.white
                              ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 155,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.amber),
                            borderRadius: BorderRadius.circular(18.0)
                        ),
                        height: 45,
                        child: TextFormField(
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return "Enter Room No..";
                            }
                            return null;

                          },
                          controller: rCon,

                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          obscureText: false,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 10,left: 20,bottom: 10),
                            //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                            hintText: "Room No...",
                            // labelText: "Password",
                            // labelStyle: TextStyle(
                            //     color: Colors.white,
                            //     fontSize: 20
                            // ),
                            hintStyle: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber),
                        borderRadius: BorderRadius.circular(18.0)
                    ),
                    height: 45,
                    child: TextFormField(
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Enter Mobile No...";
                        }
                        else if(phoneCon != 10){
                          return "Enter valid number";
                        }

                      },
                      controller: phoneCon,

                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      obscureText: false,
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10,top: 20),
                          //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                          hintText: "Enter your Phone Number",
                          // labelText: "Password",
                          // labelStyle: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 20
                          // ),
                          hintStyle: TextStyle(
                              color: Colors.white
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Icon(CupertinoIcons.device_phone_portrait,color: Colors.amber,),
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60,),
                SizedBox(
                  width: 200,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      //color: Colors.blue,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: Colors.amber,width: 2)
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: (){
                          if(_formKey.currentState!.validate()){
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Data processing")));
                          }
                        },
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              loading = true;
                            });
                            if(
                                nameCon.text.isNotEmpty &&
                                mailCon.text.isNotEmpty &&
                                passCon.text.isNotEmpty &&
                                cPassCon.text.isNotEmpty&&
                                rCon.text.isNotEmpty&&
                                bCon.text.isNotEmpty&&
                                phoneCon.text.isNotEmpty
                            ){
                              CreateAccount(
                                  nameCon.text,
                                  mailCon.text,
                                  passCon.text,
                                  cPassCon.text,
                                rCon.text,
                                bCon.text,
                                phoneCon.text
                              ).then((user) {
                                if(user != null){
                                  setState(() {
                                    loading = false;
                                  });
                                  Utils().toastMessage("Account Created");
                                }
                                else{
                                  loading = false;
                                  Utils().toastMessage("Account Failed");
                                }
                              });
                            }
                            else{
                              Utils().toastMessage("Please fill all the fields");
                            }
                          },
                          child: Text("SignIn",style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,

                          ),),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Already have an account?  ",style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),),
                    GestureDetector
                      (
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                      },
                      child: Text("Login",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.amber,
                      ),),
                    )
                  ],
                )
              ],
            ),]
          ),
        ),
      ),
    );
  }
}
