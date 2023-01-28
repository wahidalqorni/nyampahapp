import 'package:flutter/material.dart';
import 'package:nyampahgo_app/landing.dart';
import 'package:nyampahgo_app/pages/register_page.dart';
import 'package:nyampahgo_app/shared/themes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 28),
                        width: 285,
                        height: 285,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logos.png'))),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Add Email',
                          hintStyle: blackTextStyle,
                          suffixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: greyColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Add Password',
                          hintStyle: blackTextStyle,
                          suffixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: greyColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.10),
                      child: Column(
                        children: [
                          GestureDetector(
                              onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (content) => Landing() ));
                              },
                              child:
                                  Image.asset('assets/login_button_image.png')),
                          Container(
                            margin: EdgeInsets.only(top: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Don't have account?",
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterPage()));
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: blueTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
