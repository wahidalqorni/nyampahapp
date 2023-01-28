import 'package:flutter/material.dart';

import '../shared/themes.dart';

class ReedemPage extends StatefulWidget {
  const ReedemPage({super.key});

  @override
  State<ReedemPage> createState() => _ReedemPageState();
}

class _ReedemPageState extends State<ReedemPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: blackColor,
              )),
          title: Text(
            "Reedem",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(
            top: 10,
            left: 16,
            right: 16,
            bottom: 30,
          ),
          child: ListView(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: titleBgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Tukar sampahmu menjadi koin Go Point !",
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(children: [
                    Image.asset(
                      'assets/green_background.png',
                      width: 160,
                      height: 80,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 30,
                            right: 40,
                            top: 10,
                          ),
                          child: Text(
                            "Berat Sampah",
                            style: blackTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Image.asset(
                                  'assets/minus_circle_icon.png',
                                  width: 20,
                                )),
                            SizedBox(
                              width: 40,
                            ),
                            Text("4"),
                            SizedBox(
                              width: 40,
                            ),
                            Image.asset(
                              'assets/plus_circle_icon.png',
                              width: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ]),
                  Stack(children: [
                    Image.asset(
                      'assets/green_background.png',
                      width: 160,
                      height: 80,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 50,
                            right: 40,
                            top: 10,
                          ),
                          child: Text(
                            "Go Point",
                            style: blackTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 60, right: 50),
                            child: Text(
                              "400",
                              style: blackTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                      ],
                    ),
                  ]),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Maukkan kode referral Anda',
                  hintStyle: red1TextStyle,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: greyColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: Image.asset('assets/kirim_button_image.png', height: 50, width: 125,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
