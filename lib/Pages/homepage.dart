import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:luxe_jewellery/Utils/categories.dart';
import 'notification.dart';
import 'package:luxe_jewellery/Utils/product_display.dart';

class Homepage extends StatefulWidget {
  final String today = DateFormat('dd-MMM-yyyy').format(DateTime.now());
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Name / Date  text
                        Text(
                          "Hey, Anurag Jain P",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          widget.today,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    //Search and Notification Buttons
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey[200],
                          ),
                          child: Icon(Icons.search),
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NotificationPage(),
                              ),
                            );
                          },
                          child: Container(
                            // padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.green[200],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Icon(Icons.notifications),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                //Discount Card
                GestureDetector(
                  onTap: () => (),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.green[600],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Get 20% Off \nfor all Items',
                              style: TextStyle(
                                fontSize: 34,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Promo until 20-Jan-2026',
                              style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Image.asset(
                            'assets/product_images/P1.png',
                            width: 110,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(child: Categories(category: 'All')),
                      GestureDetector(child: Categories(category: 'Necklaces')),
                      GestureDetector(child: Categories(category: 'Earrings')),
                      GestureDetector(child: Categories(category: 'Rings')),
                      GestureDetector(child: Categories(category: 'Bracelets')),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProductDisplay(
                          Image: Image.asset(
                            'assets/display_images/Necklaces1.png',
                          ),
                          productName: 'Aquamarine Stocking',
                          productPrize: '\$255',
                        ),
                        ProductDisplay(
                          Image: Image.asset('assets/display_images/Ring1.png'),
                          productName: ' Silver-Toned Ring',
                          productPrize: '\$60',
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProductDisplay(
                          Image: Image.asset(
                            'assets/display_images/Bracelets1.png',
                          ),
                          productName:
                              'White Heart Anti Tarnish Bracelet - Rose Gold',
                          productPrize: '\$100',
                        ),
                        ProductDisplay(
                          Image: Image.asset(
                            'assets/display_images/Earrings1.png',
                          ),
                          productName: 'White Earrings',
                          productPrize: '\$75',
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProductDisplay(
                          Image: Image.asset(
                            'assets/display_images/Necklaces2.png',
                          ),
                          productName: 'Yellow Chimes Long Chain Necklace',
                          productPrize: '\$300',
                        ),
                        ProductDisplay(
                          Image: Image.asset('assets/display_images/Ring2.png'),
                          productName: 'Gold Plated Rings',
                          productPrize: '\$150',
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProductDisplay(
                          Image: Image.asset(
                            'assets/display_images/Bracelets2.png',
                          ),
                          productName: 'Gold Plated Sacred Grid Om Bracelet',
                          productPrize: '\$200',
                        ),
                        ProductDisplay(
                          Image: Image.asset(
                            'assets/display_images/Earrings2.png',
                          ),
                          productName: 'Blue Beads Kundan',
                          productPrize: '\$125',
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
