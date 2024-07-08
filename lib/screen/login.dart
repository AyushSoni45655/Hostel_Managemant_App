import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hostel_managemant_application/auth/methods.dart';
import 'package:hostel_managemant_application/screen/homepage.dart';
import 'package:hostel_managemant_application/screen/signin.dart';
import 'package:hostel_managemant_application/utility/utils.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;
  TextEditingController mailCon = TextEditingController();
  TextEditingController passCon = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff272727),
      body: loading  == true ?  const Center(child: SpinKitCircle(color: Colors.green,size: 30,),):Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                //height: 40,
                decoration: BoxDecoration(
                  //color: Colors.blue,
                ),
                child: Text("Login",style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),),
              ),
              SizedBox(height: 5,),
              Container(
                alignment: Alignment.center,
                //height: 40,
                decoration: BoxDecoration(
                  //color: Colors.blue,
                ),
                child: Text("Please Sign In to Continue",
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  letterSpacing: 1,
                )),
              ),
              SizedBox(
                height: 70,),
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
              SizedBox(height: 30,),
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
                      else if(passCon.text.length < 5){
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
                        prefixIcon: Icon(CupertinoIcons.device_phone_portrait,size: 30,color: Colors.amber,)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60,),
              SizedBox(
                width: 200,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      loading = true;
                    });
                    if(mailCon.text.isNotEmpty && passCon.text.isNotEmpty){
                      Login(mailCon.text.toString(), passCon.text.toString()).then((value) {
                        if(value != null){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
                          loading = false;
                          Utils().toastMessage("Login Successfull");
                        }else{
                          loading = false;
                          Utils().toastMessage("Login Failed");
                        }
                      });
                    }else{
                      Utils().toastMessage("Plese fill all the fields");
                    }
                  },
                  child: Container(
                    height: 45,
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
                        child: Text("Login",style: TextStyle(
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
              const SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Don't have an account?  ",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),),
                  GestureDetector
                    (
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignInScreen()));
                    },
                    child: Text("Sign Up",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.amber,
                    ),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
