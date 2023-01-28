import 'package:flutter/material.dart';
import 'package:nyampahgo_app/pages/drop_off_page.dart';
import 'package:nyampahgo_app/pages/pick_up_page.dart';
import 'package:nyampahgo_app/pages/reedem_page.dart';
import 'package:nyampahgo_app/shared/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildDrawer() {
    return SizedBox(
      //membuat menu drawer
      child: Drawer(
        //membuat list,
        //list digunakan untuk melakukan scrolling jika datanya terlalu panjang
        child: ListView(
          padding: EdgeInsets.zero,
          //di dalam listview ini terdapat beberapa widget drawable
          children: [
            UserAccountsDrawerHeader(
              //membuat gambar profil
              currentAccountPicture: const Image(
                image: AssetImage('assets/drawer_profile_image.png'),
              ),
              //membuat nama akun
              accountName: Text(
                "Putu Wisnu Ardia Chandra",
                style: whiteTextStyle,
              ),
              //membuat nama email
              accountEmail: Text(
                "wisnu.ardia@gmail.com",
                style: whiteTextStyle,
              ),
              //memberikan background
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bg_drawer_image.png'),
                      fit: BoxFit.cover)),
            ),
            //membuat list menu
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "Home",
                style: blackTextStyle,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "My Profile",
                style: blackTextStyle,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.home_repair_service),
              title: Text(
                "Bank account details",
                style: blackTextStyle,
              ),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "Phone calls",
                style: blackTextStyle,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: _buildDrawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: greenColor,
          title: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/inisial_profile_image.png',
                  width: 40,
                  height: 40,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Nyampah.Go!",
                  style: whiteTextStyle.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w900),
                )
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            // BACKGROUND
            Container(
              decoration: BoxDecoration(
                color: greenColor,
              ),
              width: double.infinity,
              height: 322,
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.20),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: ListView(
                  children: [
                    // SECTION 1
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      width: double.infinity,
                      child: Container(
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.yellow,
                                child: Icon(
                                  Icons.person,
                                  color: whiteColor,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Putu Wisnu Ardia Chandra",
                                    style: blackTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    "Ayo daur ulang sampah mu",
                                    style: blackTextStyle.copyWith(
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    // SECTION 2
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                      width: double.infinity,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/dollar_icon.png',
                                            width: 25,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text("Points"),
                                        ],
                                      ),
                                      Text(
                                        "1.200",
                                        style: blackTextStyle.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/money_icon.png',
                                            width: 25,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text("Saldo"),
                                        ],
                                      ),
                                      Text(
                                        "200.000",
                                        style: blackTextStyle.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // SECTION 3 : CONTENT MENU

                    Container(
                      margin: EdgeInsets.only(right: 5, left: 5),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PickUpPage()));
                              },
                              child:
                                  Image.asset("assets/pick_up_menu_image.png")),
                          SizedBox(
                            height: 2,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DropOffPage()));
                              },
                              child: Image.asset(
                                  "assets/drop_off_menu_image.png")),
                          SizedBox(
                            height: 2,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ReedemPage() ));
                            },
                            child: Image.asset("assets/redeem_menu_image.png")),
                          SizedBox(
                            height: 2,
                          ),
                          Image.asset("assets/company_menu_image.png"),
                          SizedBox(
                            height: 2,
                          ),
                          Image.asset("assets/informasi_menu_image.png"),
                          SizedBox(
                            height: 2,
                          ),
                          Image.asset("assets/volunteer_menu_image.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
