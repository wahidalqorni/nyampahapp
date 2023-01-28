import 'package:flutter/material.dart';
import 'package:nyampahgo_app/shared/themes.dart';

class DriverOtwPage extends StatefulWidget {
  const DriverOtwPage({super.key});

  @override
  State<DriverOtwPage> createState() => _DriverOtwPageState();
}

class _DriverOtwPageState extends State<DriverOtwPage> {
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
            "Pengemudi Menuju Lokasi",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/search_driver_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/driver_image.png'),
            ),
          ],
        ),
      ),
    );
  }
}
