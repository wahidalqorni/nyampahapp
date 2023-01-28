import 'package:flutter/material.dart';
import 'package:nyampahgo_app/landing.dart';
import 'package:nyampahgo_app/pages/home_page.dart';
import 'package:nyampahgo_app/shared/themes.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Verification account",
            style: blackTextStyle.copyWith(),
          ),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: blackColor,
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 28),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/verification_image.png'))),
              ),
            ),
            Center(
              child: Text(
                "Please check your inbox and enter the verification code below to verify your email address. The code will expire in 10:00.",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter you code',
                  hintStyle: red1TextStyle,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: greyColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.20),
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Landing()) );
                        },
                        child: Image.asset(
                            'assets/verification_button_image.png')),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
