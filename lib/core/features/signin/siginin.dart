import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:task_one/core/features/login/login.dart';
import 'package:task_one/core/widgets/CustomformField.dart';
import 'package:task_one/core/widgets/MainButton.dart';

class Siginin extends StatelessWidget {
  const Siginin({super.key});

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
            Center(child: Text("SIGN UP",
            style: TextStyle(color: Colors.white,
            fontSize: 30,
            fontWeight: .bold,
            ),),),
            Gap(10),
            Center(child: Text("Please sign up to get started",
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
                         Text("Name",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),),
                    Gap(10),
                    CustomFormField(hintText: "Raviel Wael", ),
                    Gap(24),
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
                        Text("Re-Type Password",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),),
                    Gap(10),
                    CustomFormField(hintText: "**********",suffixIcon: Icon(Icons.visibility_off),),
                    Spacer(),
                    MainButton(onPressed: (){}, text:"SIGN UP"),
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