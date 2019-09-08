import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hunger_station/data/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static Color appColor = Color.fromRGBO(255, 215, 0, 1);
  static Color fontColor = Color.fromRGBO(71, 28, 9, 1);
  int currentSliderIndex = 0;

  Widget offerImage(String imageUrl) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          //width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          child: ClipRRect(
            borderRadius: new BorderRadius.circular(8.0),
            child: Image.network(
              imageUrl,
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: appColor, statusBarIconBrightness: Brightness.dark));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(cursorColor: fontColor),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar"),
      ],
      locale: Locale("ar"),
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              color: appColor,
              height: 100,
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/location.png",
                        height: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "جدة، السامر",
                        style: TextStyle(color: fontColor, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: fontColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: fontColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: fontColor),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search, color: fontColor),
                        suffixIcon: Icon(Icons.tune, color: fontColor),
                        hintText: "بحث عن مطعم",
                        contentPadding: EdgeInsets.all(0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            CarouselSlider(
              height: 180.0,
              autoPlay: true,
              viewportFraction: 0.97,
              autoPlayInterval: Duration(seconds: 8),
              autoPlayAnimationDuration: const Duration(milliseconds: 300),
              items: <Widget>[
                offerImage(
                    "https://pbs.twimg.com/media/ECLwd4lW4AMs1yp?format=jpg&name=large"),
                offerImage(
                    "https://pbs.twimg.com/media/ECaIkYDXoAEsY3E?format=jpg&name=4096x4096"),
                offerImage(
                    "https://pbs.twimg.com/media/ECUxPZjWsAAYlhu?format=jpg&name=small"),
                offerImage(
                    "https://pbs.twimg.com/media/ECLiuUDWsAEvFWH?format=jpg&name=large"),
              ],
              onPageChanged: (int index) {
                setState(() {
                  currentSliderIndex = index;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (int i = 0; i < 4; i++)
                  Container(
                    height: 6,
                    width: i == currentSliderIndex ? 6 : 3,
                    margin: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: i == currentSliderIndex
                          ? appColor
                          : Colors.grey.shade400,
                    ),
                  ),
              ],
            ),
            for (int i = 0; i < getShops().length; i++)
              InkWell(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 16, left: 10),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Image.network(
                                getShops()[i].iconURL,
                                height: 55,
                                width: 55,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade600,
                                    size: 16,
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    getShops()[i].rating.toString(),
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade500),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: 70.0,
                            width: 1.0,
                            color: Theme.of(context).dividerColor,
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(getShops()[i].name),
                              Text(getShops()[i].getCategorisNames()),
                              Text(
                                "الحد الأدنى " +
                                    getShops()[i].lowerPrice.toString() +
                                    " توصيل " +
                                    getShops()[i].deliveryPrice.toString(),
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey.shade500),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.fast_forward,
                                    size: 16,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "أسرررع شي",
                                    style: TextStyle(fontSize: 11),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                ),
                onTap: () {},
              )
          ],
        ),
      ),
    );
  }
}
