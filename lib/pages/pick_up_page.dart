import 'package:flutter/material.dart';
import 'package:nyampahgo_app/pages/detail_pick_up.dart';
import 'package:nyampahgo_app/shared/themes.dart';

class PickUpPage extends StatefulWidget {
  const PickUpPage({super.key});

  @override
  State<PickUpPage> createState() => _PickUpPageState();
}

class _PickUpPageState extends State<PickUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Pick Up",
            style: blackTextStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
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
          margin: const EdgeInsets.only(
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
                    "Jemput langsung sampahmu dengan menu Pick Up. Lihat panduan berat sampah disini",
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
              Text(
                "Informasi Sampah",
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Pilih jenis dan masukkan perkiraan berat sampah, tidak ada batasan berat minimal !",
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPickUpPage(
                        title: 'Kertas',
                        imageUrl: "assets/kertas_image.png",
                      ),
                    ),
                  );
                },
                child: RowSampah(
                  imageUrl: "assets/kertas_image.png",
                  title: "Kertas",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPickUpPage(
                        title: 'Botol Plastik',
                        imageUrl: "assets/botol_plastik_image.png",
                      ),
                    ),
                  );
                },
                child: RowSampah(
                    imageUrl: "assets/botol_plastik_image.png",
                    title: "Botol Plastik"),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPickUpPage(
                        title: 'Botol Kaca',
                        imageUrl: "assets/botol_kaca_image.png",
                      ),
                    ),
                  );
                },
                child: RowSampah(
                    imageUrl: "assets/botol_kaca_image.png", title: "Botol Kaca"),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPickUpPage(
                        title: 'Kaleng',
                        imageUrl: "assets/kaleng_image.png",
                      ),
                    ),
                  );
                },
                child: RowSampah(imageUrl: "assets/kaleng_image.png", title: "Kaleng")),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPickUpPage(
                        title: 'Kosmetik',
                        imageUrl: "assets/kosmetik_image.png",
                      ),
                    ),
                  );
                },
                child: RowSampah(
                    imageUrl: "assets/kosmetik_image.png", title: "Kosmetik"),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPickUpPage(
                        title: 'Dipers',
                        imageUrl: "assets/dipers_image.png",
                      ),
                    ),
                  );
                },
                child: RowSampah(imageUrl: "assets/dipers_image.png", title: "Dipers")),
              SizedBox(
                height: 20,
              ),
              Text(
                "Perkiraan Berat",
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: greyColor2,
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Perkiraan Berat Sampah : ",
                        style: blackTextStyle,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: 20,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Kg",
                        style: blackTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Ubah",
                    style: blackTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Informasi Tempat Tinggal",
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: greyColor2,
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "No. Ponsel : ",
                        style: blackTextStyle,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                            child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: greyColor2,
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Alamat : ",
                        style: blackTextStyle,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                            child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          maxLines: 3,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Ubah",
                    style: blackTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Informasi Tambahan",
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: greyColor2,
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Pesan : ",
                        style: blackTextStyle,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                            child: TextField(
                          maxLines: 3,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Ubah",
                    style: blackTextStyle,
                  ),
                ],
              ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => DetailPickUpPage(
              //                   title: "",
              //                   imageUrl: "",
              //                 )));
              //   },
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: greenColor,
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     width: 115,
              //     height: 50,
              //     child: Center(
              //       child: Text(
              //         "Lanjut",
              //         style: whiteTextStyle,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowSampah extends StatelessWidget {
  const RowSampah({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          width: 55,
          height: 55,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: blackTextStyle,
        ),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.circular(10),
          ),
          width: 115,
          height: 30,
          child: Center(
            child: Text(
              "Pilih",
              style: whiteTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
