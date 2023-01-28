import 'package:flutter/material.dart';
import 'package:nyampahgo_app/pages/driver_otw_page.dart';
import 'package:nyampahgo_app/pages/location_office_page.dart';
import 'package:nyampahgo_app/shared/themes.dart';

class DetailDropOffPage extends StatefulWidget {
  const DetailDropOffPage(
      {super.key,
      required this.title,
      required this.imageUrl });

  final String title;
  final String imageUrl;
  @override
  State<DetailDropOffPage> createState() => _DetailDropOffPageState();
}

class _DetailDropOffPageState extends State<DetailDropOffPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
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
                    "Untuk berat sampah 1 kg ke bawah, masukkan perkiraan berat 1 kg",
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    widget.imageUrl,
                    width: 60,
                    height: 60,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Perkiraan Berat",
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          widget.title,
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: greyColor2),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove),
                        ),
                        Text(
                          "1",
                          style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "kg",
                          style: blackTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                child: Text(
                  "Koran",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                child: Text(
                  "Buku Bekas",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                child: Text(
                  "Kertas Putih/HVS",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                child: Text(
                  "Kertas Warna/Duplek",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                child: Text(
                  "Kertas Buram",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                child: Text(
                  "Karton",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                child: Text(
                  "Kertas Lainnya",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: titleBgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        "Rp 0 s/d 0",
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LocationOfficePage()));
                        },
                        child: Text(
                          "Lanjut",
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
