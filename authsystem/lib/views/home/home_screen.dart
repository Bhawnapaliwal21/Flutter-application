// ignore_for_file: avoid_print

import 'package:authsystem/views/home/detailPage.dart';
import 'package:flutter/material.dart';

List categories = [
  {
    'id': 1,
    'By': "By Girly",
    'images':
        "https://th.bing.com/th/id/OIP.eKH_Ydokzkv-dWEJC4r0-gHaHa?pid=ImgDet&rs=1",
    'name': "Printed Black Top",
    'price': "500",
    'Is-Favourite': false,
    'Is-In_theCart': false,
    'Description':
        " Product Details: Slim Fit Cotton Top,\n Smooth feel,\n Flowery Print,\n Body: 100% cotton.\n Machine wash,Colour Shown:Black/White"
  },
  {
    'id': 2,
    'By': "By Amazon",
    'images':
        "https://images.designtrends.com/wp-content/uploads/2016/11/07144451/Sequin-Top-with-Sleeves.jpg",
    'name': "Golden Shimmered Top",
    'price': "600",
    'Is-Favourite': false,
    'Is-In_theCart': false,
    'Description':
        " Product Details: Loosed golden shimmer \n topper,\n spacious feel,\n Body: 100% cotton.\n Machine wash,Colour Shown: Golden"
  },
  {
    'id': 3,
    'By': "By Fashionista",
    'images': "https://cf.shopee.com.my/file/0bd97da007a55cc36600f2ff164890d8",
    'name': "White Printed CropTop",
    'price': "650",
    'Is-Favourite': false,
    'Is-In_theCart': false,
    'Description':
        " Product Details: Fit short top,\n soft feel,\n Flowery print,\n Body: 100% Linen.\n Machine wash,Colour Shown: Hemp/White"
  },
  {
    'id': 4,
    'By': "By Trendy",
    'images':
        "https://i.pinimg.com/originals/13/81/10/138110e00c39b4a0362dd820e2fbc961.png",
    'name': "Flower Print Women Blouse ",
    'price': "700",
    'Is-Favourite': false,
    'Is-In_theCart': false,
    'Description':
        " Product Details: Fit short top,\n soft feel,\n Flowery print,\n Body: 100% Linen.\n Machine wash,Colour Shown:Transparent"
  },
  {
    'id': 5,
    'By': "By Zudo",
    'images':
        "https://th.bing.com/th/id/OIP.4LSDvR13SLRmcu5gm8mGjwHaHa?pid=ImgDet&rs=1",
    'name': "Women Satton Top",
    'price': "800",
    'Is-Favourite': true,
    'Is-In_theCart': false,
    'Description':
        " Product Details: Fitted satton top,\n Smooth feel,\n Body: Satton Silk.\n Machine wash,Colour Shown:Peach/Skin"
  },
];

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 22) / 3;

    final double itemWidth = size.width / 2;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 3,
              crossAxisCount: 2,
              mainAxisExtent: itemHeight,
              mainAxisSpacing: 3,
              childAspectRatio: (itemWidth / itemHeight),
            ),
            itemCount: categories.length,
            itemBuilder: (BuildContext context, index) {
              return Card(elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                                singleProductData: categories[index]),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Card(elevation: 0,
                          shape:  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                             borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "${categories[index]['images']}",
                              width: 170,
                              fit: BoxFit.fill,
                              height: 180,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                                singleProductData: categories[index]),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 4, 10, 0),
                        child: Text(
                          "${categories[index]['name']}",overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 6, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                             
                              Text(
                                "₹ ${categories[index]['price']}",
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              print(
                                  "Mere icon ki value ${categories[index]['Is-Favourite']}");

                              print(
                                  "Mere icon ki value ${categories[index]['Is-Favourite']}");
                              setState(() {
                                categories[index]['Is-Favourite'] =
                                    !categories[index]['Is-Favourite'];
                              });
                            },
                            child: categories[index]['Is-Favourite']
                                ? const Icon(
                                    Icons.favorite_outlined,
                                    color: Colors.red,
                                  )
                                : const Icon(Icons.favorite_border_outlined),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
