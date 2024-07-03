import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/util/Constans/color.dart';
import 'package:project/util/Constans/size.dart';
import 'package:project/util/Constans/text.dart';
import 'package:project/util/widgets/app_primary_Button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text('Welcome',
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                appName,
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
            ),
            SizedBox(height: AppSizes.spaceBtwSectionLg),
            Text('Choose username',
                style: TextStyle(
                  fontSize: 14.0,
                )),
            SizedBox(height: AppSizes.spaceBtwItems),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: AppSizes.spaceBtwSectionMd),
            AppPrimarybutton(
              buttonText: "Let's start >>>",
              buttonColor: primaryColor,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
