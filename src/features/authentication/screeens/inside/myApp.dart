import 'package:first_app/src/constants/image_strings.dart';
import 'package:first_app/src/constants/text_strings.dart';
import 'package:first_app/src/features/authentication/screeens/inside/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:first_app/src/utils/theme/theme.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

//import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //String buttonName = "Click";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

int currentIndex = 0;
void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Web sayfası açılamadı: $url';
  }
}

class _FirstPageState extends State<FirstPage> {
/*   void _launchURL(String url) async {
    try {
      if (await canLaunch(
        'https://www.sbu.edu.tr/tr/ogrenci/genel-bilgiler/akademik-takvim',
      )) {
        await launch(
            'https://www.sbu.edu.tr/tr/ogrenci/genel-bilgiler/akademik-takvim');
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  } */

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            }),

        title: Text(tAppName, style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
        elevation: 0,
        //foregroundColor: Colors.black,
        //backgroundColor: Colors.transparent,
        backgroundColor: Colors.red.shade900,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, left: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            /* child: IconButton(
                    onPressed: () {},
                    icon: const Image(image: AssetImage(tUserProfile))), */
          )
        ],
        //2-burası da appbarın titleını belirlemek için
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: currentIndex == 0
            ? Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                      image: AssetImage(tUserProfile),
                    ),
                    SizedBox(height: 8),
                    Text(
                      tDashboardTitle,
                      style: txtTheme.headlineSmall,
                    ),
                    SizedBox(height: 6),
                    Text(
                      tDashboardHeading,
                      style: txtTheme.titleLarge,
                    ),
                    const SizedBox(height: 3.0),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(left: BorderSide(width: 4))),
                      /* child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                Text(tDashboardSearch,
                                    style: txtTheme.headlineLarge?.apply(
                                        color: Colors.grey.withOpacity(0.5))),
                                const Icon(Icons.mic, size: 25),
                              ], 
                            ), */
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    SizedBox(
                      height: 120,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              _launchURL(
                                  'https://www.sbu.edu.tr/FileFolder/Dosyalar/eb408a43/2022_8/sbuat-09483af8.pdf');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red.shade900,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                /* side: BorderSide(
                                        color: Colors.red.shade900, width: 4.0), */
                              ),
                            ),
                            child: SizedBox(
                              width: 120,
                              height: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    //color: Colors.red.shade900,
                                  ),
                                  SizedBox(height: 8),
                                  Flexible(
                                    child: Text(
                                      "Akademik\nTakvim",
                                      style: txtTheme.titleLarge,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _launchURL(
                                  'https://www.sbu.edu.tr/FileFolder/Dosyalar/eb408a43/2022_8/sbuat-09483af8.pdf');
                              /* _launchURL(
                                  'https://aday.sbu.edu.tr/tr/kulliyede-yasam/yemek'); */
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red.shade900,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                /* side: BorderSide(
                                        color: Colors.red.shade900, width: 4.0), */
                              ),
                            ),
                            child: SizedBox(
                              width: 120,
                              height: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.restaurant_menu_outlined,
                                    //color: Colors.red.shade900,
                                  ),
                                  SizedBox(height: 8),
                                  Flexible(
                                    child: Text(
                                      "Yemekhane",
                                      style: txtTheme.titleLarge,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red.shade900,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                /* side: BorderSide(
                                        color: Colors.red.shade900, width: 4.0), */
                              ),
                            ),
                            child: SizedBox(
                              width: 120,
                              height: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.airport_shuttle_rounded,
                                    //color: Colors.red.shade900,
                                  ),
                                  SizedBox(height: 8),
                                  Flexible(
                                    child: Text(
                                      "Servisler",
                                      style: txtTheme.titleLarge,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              _launchURL('https://www.sbu.edu.tr/tr/kutuphane');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red.shade900,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                /* side: BorderSide(
                                        color: Colors.red.shade900, width: 4.0), */
                              ),
                            ),
                            child: SizedBox(
                              width: 120,
                              height: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.menu_book_rounded,
                                    //color: Colors.red.shade900,
                                  ),
                                  SizedBox(height: 8),
                                  Flexible(
                                    child: Text(
                                      "Kütüphane",
                                      style: txtTheme.titleLarge,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                _launchURL('https://www.sbu.edu.tr/tr/obs');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.shade300,
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      tTeacher,
                                      style: txtTheme.titleLarge,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Image(
                                            image: AssetImage(tTeacherPhoto),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))
            : //settings sayfası
            //BİLGİLERİİİİİİİİİİİİİİİİİİMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
            currentIndex == 1
                ? ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade300,
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 80),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Öğrenci İsmi",
                                  style: txtTheme.titleLarge,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "Öğrencinin Bölümü",
                                  style: txtTheme.titleLarge,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "Öğrencinin Numarasi",
                                  style: txtTheme.titleLarge,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 40),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "GPA",
                                          style: txtTheme.titleLarge,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          "....",
                                          style: txtTheme.titleLarge,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Krediler:",
                                          style: txtTheme.titleLarge,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          ".....",
                                          style: txtTheme.titleLarge,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 43,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          " T.Krediler:",
                                          style: txtTheme.titleLarge,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          ".....",
                                          style: txtTheme.titleLarge,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  /* children: [
                                    Flexible(child: Icon(Icons.note)),
                                  ], */
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                :
                // notifications
                Column(
                    children: [
                      //AnnouncementButton(),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  _launchURL(
                                      'https://www.sbu.edu.tr/tr/duyuru-detay/tum-duyurular');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.shade300,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 40),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "DUYURULAR",
                                        style: txtTheme.titleLarge,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      const Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Flexible(
                                              child:
                                                  Icon(Icons.campaign_rounded)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 6),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.shade300,
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "HABERLER",
                                      style: txtTheme.titleLarge,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    const Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Flexible(child: Icon(Icons.newspaper)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 6),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey.shade300,
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ETKİNLİKLER",
                                      style: txtTheme.titleLarge,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    const Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                            child: Icon(
                                                Icons.card_membership_rounded)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
      ),

      //Aşağısı bildirimler butonu için kullanmayabilirim?
      /*         floatingActionButton: Stack(
          children: [
            Positioned(
              top: 185,
              left:
                  360, 
              child: SizedBox(
                width: 50,
                height: 50,
                child: FloatingActionButton(
                  //backgroundColor: Colors.red.shade400,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const CCRPage();
                        },
                      ),
                    );
                  },
                  child: const Icon(Icons.notification_add),
                  backgroundColor: Colors.red.shade900,
                ),
              ),
            ),
          ],
        ), */

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.red.shade900,
        items: [
          Icon(
            Icons.home,
            color: Colors.grey,
          ),
          Icon(
            Icons.person,
            color: Colors.grey,
          ),
          Icon(
            Icons.notification_add_outlined,
            color: Colors.grey,
          ),
        ],
        index: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
//eski navigation bar
/*         bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red.shade900,
          items: const [
            BottomNavigationBarItem(
              label: "Ana Sayfa",
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
            ),

            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),

              label: "Bilgilerim",
              //backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              label: "Bildirimler",
              icon: Icon(
                Icons.notification_add_outlined,
                color: Colors.grey,
              ),
            )

          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ), */
    );
  }
}

class MyBox extends StatelessWidget {
  final String url;

  MyBox({
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          _launchURL(url);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade300,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [],
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Web sayfası açılamadı: $url';
    }
  }
}
