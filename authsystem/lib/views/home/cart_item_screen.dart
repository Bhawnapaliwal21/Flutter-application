import 'package:authsystem/controllers/all_in_controller.dart';
import 'package:authsystem/views/home/bottom_navigation_bar.dart';

import 'package:flutter/material.dart';

class CartItemList extends StatefulWidget {
  CartItemList({
    Key? key,
  }) : super(key: key);

  @override
  State<CartItemList> createState() => _CartItemListState();
}

class _CartItemListState extends State<CartItemList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // leading: IconButton(
      //   //   icon: const Icon(
      //   //     Icons.arrow_back,
      //   //   ),
      //   //   onPressed: () {Navigator.push(
      //   //   context,
      //   //   MaterialPageRoute(
      //   //     builder: (context) => BottomNavigationBarPage(selectedIndex: 0,),
      //   //   ),
      //   // );},
      //   // ),
      //   title: const Text(
      //     "SHOPPING BAG",
      //     style: TextStyle(fontSize: 20),
      //   ),
      //   backgroundColor: Colors.indigo,
      //   toolbarHeight: 80,
      //   // centerTitle: true,
      // ),
      body: AllInController.userItems1.isEmpty
          ? Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://th.bing.com/th/id/OIP.fXpKv_KLQsOIkkTCpMB5gAHaHa?pid=ImgDet&rs=1")),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "oops! Feel like nothing is in your bag",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: AllInController.userItems1.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                      height: 200,
                      width: double.infinity,
                      child: Expanded(
                        child: Row(
                      
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4, 0,0,0),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                //color: Colors.amber,
                                elevation: 8,
                                //semanticContainer: true,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      "${AllInController.userItems1[index]['images']}",
                                    width: 150,
                                    fit: BoxFit.cover,
                                    height: 150,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${AllInController.userItems1[index]['name']}",
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  Text(
                                    "${AllInController.userItems1[index]['By']}",
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  Text(
                                    "Price: ₹${AllInController.userItems1[index]['price']}",
                                    overflow: TextOverflow.ellipsis,
                                    style:  TextStyle(
                                        fontSize: 17,color:Colors.pink[200],
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.italic),
                                  ),

                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.blueGrey[900], shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))
                                        ),
                                        onPressed: () {
                                          // setState(() {});
                                        },
                                        child: const Text('Buy Now'),
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom( shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                                          primary: Colors.pink[200],
                                        ),
                                        onPressed: () {
                                          // setState(() {});
                                        },
                                        child: const Text('Remove'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // const Divider(
                    //   height: 10,
                    //   thickness: 1,
                    // )
                  ],
                );
              },
            ),
    );
  }
}
