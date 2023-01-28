import 'package:flutter/material.dart';

import '../shared/themes.dart';

class UpdatePinPage extends StatefulWidget {
  const UpdatePinPage({super.key});

  @override
  State<UpdatePinPage> createState() => _UpdatePinPageState();
}

class _UpdatePinPageState extends State<UpdatePinPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ganti PIN",
            style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          backgroundColor: whiteColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: blackColor,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: ListView(
            children: [
              Text(
                "Mengganti PIN",
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Image.asset(
                "assets/pin_image.png",
                width: 250,
                height: 250,
              )),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Masukkan PIN lama Anda",
                      style: red1TextStyle,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Add PIN',
                        hintStyle: greenTextStyle,
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: greyColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Masukkan PIN baru Anda",
                      style: red1TextStyle,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Add PIN',
                        hintStyle: greenTextStyle,
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: greyColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Konfirmasi PIN baru Anda",
                      style: red1TextStyle,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Add PIN',
                        hintStyle: greenTextStyle,
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: greyColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05),
                child: Image.asset("assets/ok_button_image.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
