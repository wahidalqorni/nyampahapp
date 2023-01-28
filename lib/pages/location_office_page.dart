import 'package:flutter/material.dart';
import 'package:nyampahgo_app/shared/themes.dart';

class LocationOfficePage extends StatefulWidget {
  const LocationOfficePage({super.key});

  @override
  State<LocationOfficePage> createState() => _LocationOfficePageState();
}

class _LocationOfficePageState extends State<LocationOfficePage> {
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
            "Lokasi Kantor Terdekat",
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
                  image: AssetImage('assets/lokasi_kantor_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}