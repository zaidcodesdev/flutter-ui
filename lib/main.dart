import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home:HomePage(),
   );
  }
}

  class HomePage extends StatelessWidget{
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text("Home"),
          centerTitle:true
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: emailController,
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.emailAddress,
               // obscureText: true,
               // obscuringCharacter: "8",
                decoration: InputDecoration(
                  hintText: "Enter your Email here",
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.grey.shade400),
                  prefixIcon:Icon(Icons.email),
                  prefixIconColor: Colors.white,
                  filled:false,
                  fillColor: Colors.white,
                  enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.green
                    )
                  ),    focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                        width: 2,
                        color: Colors.blue
                    )
                ),

                ),
              
              
                ),SizedBox(
                height: 11,
              ),
              TextField(
                controller: phoneNumberController,
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ],
                // obscureText: true,
                // obscuringCharacter: "8",
                decoration: InputDecoration(
                  hintText: "Enter your Phone Number here",
                  labelText: "Phone Number",
                  labelStyle: TextStyle(color: Colors.grey.shade400),
                  prefixIcon: Icon(Icons.call),
                  prefixIconColor: Colors.white,
                  filled: false,
                  fillColor: Colors.white,
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                          width: 2,
                          color: Colors.green
                      )
                  ),    focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                        width: 2,
                        color: Colors.blue
                    )
                ),

                ),
              ),SizedBox(
                height: 11,
              ),
              StatefulBuilder(
                builder: (context , ss) {
                  return TextField(
                    controller: passWordController,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                     obscureText: true,
                    // obscuringCharacter: "8",
                    decoration: InputDecoration(
                      hintText: "Enter your Password here",
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.grey.shade400),
                      prefixIcon: Icon(Icons.password),
                      prefixIconColor: Colors.white,
                      suffixIcon: InkWell(
                          onTap: (){
                            ss((){});

                          },
                          child: Icon(Icons.visibility_off )),
                      suffixIconColor: Colors.white,
                      filled: false,
                      fillColor: Colors.white,
                      enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.green
                          )
                      ),    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            width: 2,
                            color: Colors.blue
                        )
                    ),

                    ),
                  );
                }
              )




             , SizedBox(
                height: 50,
              )
             , ElevatedButton
                (onPressed:(){}, child: Text("Sign in"),
             style: ElevatedButton.styleFrom(backgroundColor:Colors.blue , foregroundColor: Colors.white ),),
            ],
          ),
          ),
          
























      );
  }
}

