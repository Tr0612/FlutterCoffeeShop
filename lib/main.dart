import 'package:coffeshopui/details_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(left: 15),
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Welcome Tr',
              style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF473D3A)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/model.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 45),
          child: Text(
            'Let\'s select the best taste for your next coffee break!',
            style: TextStyle(
              fontFamily: 'nunito',
              fontSize: 17.0,
              fontWeight: FontWeight.w300,
              color: Color(0xFFB0AAA7),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Taste of the week',
              style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 17.0,
                  color: Color(0xFF473D3A)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Text(
                'See all',
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 15,
                  color: Color(0xFFCEC7C4),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 410,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              coffeeListCard(
                  context,
                  'assets/images/starbucks.png',
                  'Caffe Misto',
                  'Coffeeshop',
                  'Our dark,rich espresso balanced with steamed milk and a light layer of foam',
                  '\$4.99',
                  false),
              coffeeListCard(
                  context,
                  'assets/images/starbucks.png',
                  'Caffe Latte',
                  'BrownHouse',
                  'Rich,full-bodied espresso with bittersweet milk sauce and steamed milk',
                  '\$3.99',
                  false)
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Explore nearby',
              style: TextStyle(
                fontFamily: 'varela',
                fontSize: 17.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'See all',
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 15,
                  color: Color(0xFFCEC7C4),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
        Container(
          height: 125,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              buildImage('assets/images/coffee.jpg'),
              buildImage('assets/images/coffee2.jpg'),
              buildImage('assets/images/coffee3.jpg'),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ));
    ;
  }
}

buildImage(String imgPath) {
  return Padding(
    padding: EdgeInsets.only(right: 15),
    child: Container(
      height: 100,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imgPath),
        ),
      ),
    ),
  );
}

coffeeListCard(BuildContext context, String imgPath, String coffeName,
    String shopName, String description, String price, bool isFavourite) {
  return Padding(
    padding: EdgeInsets.only(left: 15, right: 15),
    child: Container(
      height: 300,
      width: 225,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 335,
              ),
              Positioned(
                top: 75,
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 20),
                  height: 260,
                  width: 225,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0XFFDAB68C)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        shopName + '\'s',
                        style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        coffeName,
                        style: TextStyle(
                            fontFamily: 'varela',
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        description,
                        style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            // fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            price,
                            style: TextStyle(
                                fontFamily: 'varela',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3A4742)),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite,
                                color: isFavourite ? Colors.red : Colors.grey,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 25,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.contain),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DetailPage()));
            },
            child: Container(
              height: 50,
              width: 225,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFF473D3A),
              ),
              child: Center(
                child: Text(
                  'Order Now',
                  style: TextStyle(
                      fontFamily: 'nunito',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
