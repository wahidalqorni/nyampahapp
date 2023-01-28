import 'package:flutter/material.dart';
import 'package:nyampahgo_app/landing.dart';
import 'package:nyampahgo_app/pages/create_pin_page.dart';
import 'package:nyampahgo_app/pages/update_pin_page.dart';
import 'package:nyampahgo_app/shared/themes.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Landing()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "My Profile",
                  style: blackTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Container(
                  width: 170,
                  height: 4,
                  color: purpleColor,
                ),
              ],
            )
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.64,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Putu Wisnu Ardia Chandra",
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Hello, I’m Putu Wisnu Ardia Chandra.",
                        style: blackTextStyle.copyWith(),
                      ),
                      Text(
                        "Welcome to my profile!",
                        style: blackTextStyle.copyWith(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/dollar_icon.png",
                                    width: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "1.200",
                                    style: blackTextStyle.copyWith(
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/money_icon.png",
                                    width: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "200.000",
                                    style: blackTextStyle.copyWith(
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  width: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/drawer_profile_image.png"),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 4,
              color: purpleColor,
            ),
            ListMenuProfile(
              titleMenu: "Kotak Masuk",
            ),
            SizedBox(
              height: 6,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreatePinPage()));
                },
                child: ListMenuProfile(
                  titleMenu: "Buat Pin",
                )),
            SizedBox(
              height: 6,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UpdatePinPage()));
                },
                child: ListMenuProfile(
                  titleMenu: "Ganti Pin",
                )),
            SizedBox(
              height: 6,
            ),
            ListMenuProfile(
              titleMenu: "Tutorial Aplikasi",
            ),
            SizedBox(
              height: 6,
            ),
            ListMenuProfile(
              titleMenu: "Kode Referal",
            ),
            SizedBox(
              height: 6,
            ),
            ListMenuProfile(
              titleMenu: "Daftar Pengepul",
            ),
            SizedBox(
              height: 6,
            ),
            ListMenuProfile(
              titleMenu: "Pengaturan",
            ),
            SizedBox(
              height: 6,
            ),
            ListMenuProfile(
              titleMenu: "Bantuan",
            ),
            SizedBox(
              height: 6,
            ),
            ListMenuProfile(
              titleMenu: "Ulasan",
            ),
            SizedBox(
              height: 6,
            ),
            ListMenuProfile(
              titleMenu: "Keluar",
            ),
          ],
        ),
      ),
    );
  }
}

class ListMenuProfile extends StatelessWidget {
  const ListMenuProfile({
    Key? key,
    required this.titleMenu,
  }) : super(key: key);

  final String titleMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(
          titleMenu,
          style: blackTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
