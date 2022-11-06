// import 'package:authsystem/views/home/home_screen.dart';
import 'package:authsystem/controllers/all_in_controller.dart';
import 'package:authsystem/views/home/cart_item_screen.dart';
import 'package:badges/badges.dart';

import 'package:authsystem/views/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';

class DetailPage extends StatefulWidget {
  final Map singleProductData;
  const DetailPage({Key? key, required this.singleProductData})
      : super(key: key);

  @override
  State<DetailPage> createState() => DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  static String buttonText = 'Add to Saves';

  @override
  Widget build(BuildContext context) {
    // print(widget.singleProductData['']);
    // var size = MediaQuery.of(context).size;
    // final double itemHeight = (size.height - kToolbarHeight - 24) / 3;

    // final double itemWidth = size.width / 2;
    return WillPopScope(
      onWillPop: () async {
        print("Yes I am calling");
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavigationBarPage(
                selectedIndex: 0,
              ),
            ),
            ((route) => false));
        return true;
      },
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text(
        //     "Product Screen",
        //     style: TextStyle(fontSize: 20),
        //   ),
        //   backgroundColor: Colors.indigo,
        //   toolbarHeight: 80,
        //   // actions: [
        //   //   InkWell(
        //   //     onTap: () {
        //   //       Navigator.of(context).push(MaterialPageRoute(
        //   //         builder: (context) => CartItemList(),
        //   //       ));
        //   //     },
        //   //     child: Padding(
        //   //       padding: const EdgeInsets.fromLTRB(0, 30, 25, 0),
        //   //       child: Stack(
        //   //         children: [
        //   //           Badge(
        //   //             badgeContent: Text("${AllInController.userItems1.length}"),
        //   //             child: const Icon(Icons.shopping_cart_outlined),
        //   //           ),
        //   //         ],
        //   //       ),
        //   //     ),
        //   //   ),
        //   // ],
        // ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        child: Image.network(
                          "${widget.singleProductData['images']}",
                          width: double.infinity,
                          fit: BoxFit.cover,
                          height: 400,
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(
                            context,
                            
                            MaterialPageRoute(
                              builder: (context) => BottomNavigationBarPage(selectedIndex: 0,),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${widget.singleProductData['name']}",
                        style:
                            const TextStyle(fontSize: 23, color: Colors.black),
                      ),
                      const Text(
                        " Description: ",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                      Text(
                        "${widget.singleProductData['Description']}",
                        style:
                            const TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      Text(
                        "${widget.singleProductData['By']}",
                        style:
                            const TextStyle(fontSize: 23, color: Colors.black),
                      ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      Text(
                        "Price: ₹ ${widget.singleProductData['price']}",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.pink[200],
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 50,
                      // width: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey[900],
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: const Text(
                          "Buy Now",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    widget.singleProductData['Is-In_theCart']
                        ? SizedBox(
                            height: 50,
                            // width: 150,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    primary: Colors.pink[100],
                                    elevation: 0),
                                onPressed: () {
                                  AllInController.removetocart(
                                      widget.singleProductData, context);
                                  setState(() {
                                    print('Remove from cart called');
                                    widget.singleProductData['Is-In_theCart'] =
                                        !widget
                                            .singleProductData['Is-In_theCart'];
                                  });
                                },
                                child: const Text(
                                  'Remove from Saves',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.normal),
                                )),
                          )
                        : SizedBox(
                            height: 50,
                            // width: 150,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.pink[200],
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {
                                setState(
                                  () {
                                    AllInController.addtocart(
                                        widget.singleProductData, context);

                                    widget.singleProductData['Is-In_theCart'] =
                                        !widget
                                            .singleProductData['Is-In_theCart'];
                                  },
                                );
                              },
                              child: const Text(
                                'Add to Saves',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
