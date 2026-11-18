import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_one/core/features/login/login.dart';
class Splash extends StatefulWidget {
  const new({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
    void initState()
{
  Future.delayed(Duration(seconds: 3),(){
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Login()) );
  });
}
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset("assets/icons/Ellipse 1005.svg"),
            Center(child: SvgPicture.asset("assets/icons/Logo.svg"),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset("assets/icons/Ellipse 1006.svg"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}