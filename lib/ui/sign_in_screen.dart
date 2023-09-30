import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:web_sign_in/ui/widgets/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            /// Navigator
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )
                      ),
                      SizedBox(width: 15,),
                      Text(
                          "About",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )
                      ),
                      SizedBox(width: 15,),
                      Text(
                          "Blog",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )
                      ),
                      SizedBox(width: 15,),
                      Text(
                          "Pages",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )
                      ),
                      SizedBox(width: 15,),
                      Text(
                          "Contact",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Row(
                        children: [
                          Text(
                              "English",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              )
                          ),
                          Icon(Icons.keyboard_arrow_down_sharp),
                        ],
                      ),
                      const SizedBox(width: 20,),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Sign In', style: TextStyle(color: Colors.blue),),
                            const SizedBox(height: 5,),
                            Container(
                              height: 2,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        width: 112,
                        height: 42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            color: Colors.white),
                        child: const Center(child: Text('Register', style: TextStyle(color: Colors.blue))),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            /// Content
            Expanded(
              flex: 3,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Sign In to Recharge Direct',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                        ),),
                        const SizedBox(height: 40,),
                        const Text('if you don’t an account',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        Row(
                          children: [
                            const Text('you can',
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            TextButton(onPressed: (){},
                                child: const Text('Register here!'))
                          ],
                        ),
                      ],
                    ),
                  ),
                  /// person Image
                  Expanded(
                    child: Image.asset(
                      "assets/images/character.png",
                    ).animate().slideY(begin: -2, end: 0,
                      duration: const Duration(seconds: 1),
                      curve: const FlippedCurve(Curves.bounceIn)
                    ),
                  ),
                  const SizedBox(width: 40,),
                  /// Fields
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomTextField(size: size,hintText: 'Enter email',
                          iconData: Icons.circle_outlined,),
                        const SizedBox(height: 15,),
                        CustomTextField(size: size,hintText: 'Enter password',
                          iconData: Icons.remove_red_eye_outlined,isPassword: true),
                        const SizedBox(height: 10,),
                        const Text('Recover Password ?',
                          style: TextStyle(color: Colors.grey, fontSize: 10),),
                        const SizedBox(height: 40,),
                        Container(
                            width: 400,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff4461f2)),
                          child: const Center(
                              child: Text('sign In', style: TextStyle(
                                color: Colors.white, fontSize: 17
                              ),)),
                        ),
                        const SizedBox(height: 40,),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                              "Or continue with",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                              )
                          ),
                        ),
                        const SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/google.png",
                              height: 100,
                              width: 100,
                            ),
                            Image.asset(
                              "assets/images/apple.png",
                              height: 100,
                              width: 100,
                            ),
                            Image.asset(
                              "assets/images/facebook.png",
                              height: 100,
                              width: 100,
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
