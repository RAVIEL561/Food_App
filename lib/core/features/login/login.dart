import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:task_one/core/features/signin/siginin.dart';
import 'package:task_one/core/widgets/CustomformField.dart';
import 'package:task_one/core/widgets/MainButton.dart';
import 'package:task_one/core/widgets/Customplatform.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[ Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 18, 24, 54),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
              children: [
                SvgPicture.asset("assets/icons/Ellipse 1005.svg",color: const Color.fromARGB(255, 239, 237, 237),),
              ],
            ),
            Gap(30),
            Center(child: Text("Log in",
            style: TextStyle(color: Colors.white,
            fontSize: 30,
            fontWeight: .bold,
            ),),),
            Gap(10),
            Center(child: Text("Please sign in to your existing account",
            style: TextStyle(color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600),
            ),),
            ],
          ),
        ),
        Positioned(
          top: 280,
          right: 0,
          bottom: 0,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),),
                    Gap(10),
                    CustomFormField(hintText: "example@gmail.com", ),
                    Gap(24),
                             Text("Password",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),),
                    Gap(10),
                    CustomFormField(hintText: "*********",suffixIcon: Icon(Icons.visibility_off), ),
                    Gap(24),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) => true,checkColor: Colors.grey,),
                            Gap(5),
                            Text("Remember me",style: TextStyle(
                              color: Colors.grey,
                                fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),),
                          ],
                        ),
                        TextButton(onPressed: (){}, child: Text("Forget password",style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),))
                      ],
                    ),
                    Gap(30),
                    MainButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Siginin()));
                    }, text: "Log in"),
                    Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Text("Do not have any account?",style: TextStyle(
                         color: Colors.grey,
                                fontSize: 16,
                              fontWeight: FontWeight.w600
                       ),),
                       TextButton(onPressed: (){}, child: Text("SIGN UP",style: 
                       TextStyle(
                         color: Colors.deepOrange,
                                fontSize: 16,
                              fontWeight: FontWeight.w600
                       ),))
                      ],
                    ),
                    Gap(20),
                    Center(child: Text("or",style: TextStyle(
                       color: Colors.grey,
                                fontSize: 16,
                              fontWeight: FontWeight.w600
                    ),),),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Customplatform(color: const Color.fromARGB(255, 57, 126, 245),
                        icon: Icon(Icons.facebook,color: Colors.white,size: 30,),),
                        Customplatform(color: Colors.blue, 
                        icon: Icon(Icons.phone,color: Colors.white,size: 30,),),
                           Customplatform(color: Colors.black, 
                        icon: Icon(Icons.apple,color: Colors.white,size: 30,),),
                        
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
        ],
      ) ,
    );
  }
}

