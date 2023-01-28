import 'package:flutter/material.dart';
import 'package:nyampahgo_app/pages/verification_page.dart';
import 'package:nyampahgo_app/shared/themes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Create account",
            style: blackTextStyle.copyWith(),
          ),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back, color: blackColor,),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin:const EdgeInsets.only(bottom: 28),
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/register_image.png'))),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Add Email',
                      hintStyle: blackTextStyle,
                      suffixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      hintStyle: blackTextStyle,
                      suffixIcon: Icon(Icons.person_outline),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      hintStyle: blackTextStyle,
                      suffixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: blackTextStyle,
                      suffixIcon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: blackTextStyle,
                      suffixIcon: Icon(Icons.lock_open),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.10),
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationPage() ));
                        },
                        child: Image.asset('assets/register_button_image.png')),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
