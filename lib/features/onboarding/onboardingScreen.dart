import 'package:flutter/material.dart';

import '../../core/theming/styles.dart';
import '../../core/widgets/app_text_button.dart';
import '../../core/widgets/app_text_form_field.dart';
import '../../core/widgets/container_background.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
    //    alignment: Alignment.,
        children: [
          ContainerBackground(height: 500,),
        //  SizedBox(height: 200),
          Column(
            children: [
              Text('SakanY' ,style:  TextStyManager.font70WhiteRegular),
              SizedBox(height: 100),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const AppTextFormField(
                        hintText: 'email',
                        prefixIcon: Icon(Icons.email),
                      ),
                      SizedBox(height: 20),
                      const AppTextFormField(
                        hintText: 'password',
                        prefixIcon: Icon(Icons.password),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AppTextButton(
                        buttonText: "Login",
                        textStyle: TextStyle( fontSize: 16 , color:  Colors.blue),
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text('________________OR_________________'),
                      AppTextButton(
                        buttonText: "Login",
                        textStyle:TextStyle( fontSize: 16 , color:  Colors.blue),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
