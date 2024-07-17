import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/controller/question_controller.dart';
import 'package:project/routes/routes.dart';
import 'package:project/util/Constans/color.dart';
import 'package:project/util/Constans/size.dart';
import 'package:project/util/Constans/text.dart';
import 'package:project/util/widgets/app_primary_Button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  _submit(BuildContext context) {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) return;
    _formKey.currentState!.save();
    Get.offAndToNamed(Routes.gameScreenRoute);
    Get.find<QuestionController>().startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text('Welcome',
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                appName,
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwSectionLg),
            const Text('Choose username',
                style: TextStyle(
                  fontSize: 14.0,
                )),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Form(
                key: _formKey,
                child: GetBuilder<QuestionController>(
                  init: Get.find<QuestionController>(),
                  builder: (controller) => TextFormField(
                    controller: controller.nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 2.0),
                            borderRadius: BorderRadius.circular(16.0))),
                    validator: (String? val) {
                      if (val!.isEmpty) {
                        return "Name should not be empty";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (newValue) {
                      controller.name = newValue!.trim().toUpperCase();
                    },
                    onFieldSubmitted: (value) => _submit(context),
                  ),
                )),
            const SizedBox(height: AppSizes.spaceBtwSectionMd),
            AppPrimarybutton(
              onTap: () {
                _submit(context);
              },
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
