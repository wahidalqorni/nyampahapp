import 'package:flutter/material.dart';
import 'package:nyampahgo_app/shared/themes.dart';

class CreatePinPage extends StatefulWidget {
  const CreatePinPage({super.key});

  @override
  State<CreatePinPage> createState() => _CreatePinPageState();
}

class _CreatePinPageState extends State<CreatePinPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Buat PIN",
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
                "Membuat PIN",
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Buat PIN 6 digit untuk menambahkan keamanan dan memudahkan transaksi Anda",
                    style: red1TextStyle,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      "Ketik ulang PIN",
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
                    top: MediaQuery.of(context).size.height * 0.10),
                    child: Image.asset("assets/ok_button_image.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
