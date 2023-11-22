import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

List<Map<String, dynamic>> articles = [
  {
    'image': 'assets/twit.jfif',
    'text': 'Apple, Disney, dan IBM Tarik Iklan dari X karena Materi Antisemit',
  },
  {
    'image': 'assets/trump.jfif',
    'text': 'Trump Bersumpah untuk Batalkan Perjanjian Dagang dengan Asia saat Terpilih',
  },
  {
    'image': 'assets/jokowi.jfif',
    'text': 'Trilateral dengan Fiji-Papua Nugini, RI Ingin Jadikan Pasifik Damai dan Sejahtera',
  },
  {
    'image': 'assets/joe.jfif',
    'text': 'Joe Biden: Gaza dan Tepi Barat Harus di Bawah Pemerintahan Palestina',
  },
  {
    'image': 'assets/weton.jfif',
    'text': '4 Weton Ini Memiliki Kemampuan Supranatural yang Luar Biasa',
  },
  // Add more articles as needed
];

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        endDrawer: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: 340,
            width: double.infinity,
            child: Drawer(
              child: Container(
                width: MediaQuery.of(context).size.width * 1.0,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/inaklug.png',
                              fit: BoxFit.contain,
                              height: 55,
                            ),
                            IconButton(
                              icon: Icon(Icons.close),
                              onPressed: () {
                                _scaffoldKey.currentState?.closeEndDrawer();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Center(
                        child: Text(
                          'HOME                 ',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      onTap: () {
                        // Add your home page navigation logic here
                      },
                    ),
                    ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Center(
                        child: Text(
                          'TENTANG KAMI',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      onTap: () {
                        // Add your about us page navigation logic here
                      },
                    ),
                    ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Center(
                        child: Text(
                          'LAYANAN KAMI',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      onTap: () {
                        // Add your our service page navigation logic here
                      },
                    ),
                    ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Center(
                        child: Text(
                          'ARTIKEL             ',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      onTap: () {
                        // Add your article page navigation logic here
                      },
                    ),
                    ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Center(
                        child: Text(
                          'HUBUNGI KAMI',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      onTap: () {
                        // Add your contact us page navigation logic here
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 80,
              toolbarHeight: 80,
              backgroundColor: Colors.transparent, // Set the background color to transparent
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.purple,
                    ],
                  ),
                ),
              ),
              title: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/inaklug.png',
                    fit: BoxFit.contain,
                    height: 60,
                  ),
                  const Text(
                      'Inaklug',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    _scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 27.0, left: 30.0, right: 16.0, bottom: 10.0),
                    child: Text(
                      'ARTIKEL TERBARU',
                      style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  for (var article in articles)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                            child: Image.asset(
                              article['image'],
                              fit: BoxFit.cover,
                              height: 180,
                              width: 300,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Padding(
                            padding: const EdgeInsets.only(right: 40.0, left: 10.0),
                            child: Text(
                              article['text'],
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'November 17, 2023 15:00 WIB',
                              style: TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  // Add two rows of numbers at the bottom right corner with arrows
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.arrow_back, size: 24, color: Colors.black),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Colors.blue, Colors.purple],
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 15.0,
                            backgroundColor: Colors.transparent,
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                        ),
                        for (int i = 2; i <= 5; i++)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '$i',
                              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        for (int i = 6; i <= 10; i++)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '$i',
                              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                          ),
                        Icon(Icons.arrow_forward, size: 24, color: Colors.black),
                      ],
                    ),
                  ),
                  SizedBox(height: 100.0),
                  // Divider to separate "Hubungi Kami" from the numbers
                  Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                    height: 10.0,
                    indent: 20.0,
                    endIndent: 20.0,
                  ),
                  SizedBox(height: 100.0),
                  // Contact Us Section
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                          child: Text(
                            'Hubungi Kami',
                            style: TextStyle(fontSize: 32.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Kantor Pusat',
                                style: TextStyle(fontSize: 24.0),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'MULA BY GALERIA JAKARTA, CILANDAK TOWN SQUARE, LT.BASEMENT',
                                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Text(
                                'Phone: 085286754052',
                                style: TextStyle(fontSize: 18.0, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 35.0), // Added space between phone number and buttons
                              // First Button: LOKASI KAMI with linear gradient color
                              Container(
                                width: 200.0, // Adjust the width as needed
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.blue, Colors.purple],
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    // Add your logic for LOKASI KAMI button
                                  },
                                  child: Text(
                                    'LOKASI KAMI',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 35.0), // Added space between buttons
                              // Second Button: KIRIM PESAN with colored outline
                              Container(
                                width: 200.0, // Adjust the width as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(color: Colors.blue, width: 2.0),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    // Add your logic for KIRIM PESAN button
                                  },
                                  child: Text(
                                    'KIRIM PESAN',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 90.0),
                            ],
                          ),
                        ),
                        Container(
              width: double.infinity,
              height: 60.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                ),
              ),
                          child: Center (
                          child: Padding(
                            padding: EdgeInsets.all(8.0), // Adjust the padding as needed
                            child: Text(
                              'Copyright 2023 - Inaklug Indonesia Hak Cipta Dilindungi Undang-Undang',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
