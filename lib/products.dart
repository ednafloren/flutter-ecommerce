 import 'package:flutter/material.dart';
 import 'main.dart';
 import 'homepage.dart';


class Products extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<Products> {
  int cartItemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 234, 219, 247),
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 77, 57, 207),
        title: Row(
          children: [
            Text(
              'Products',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 80),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    // Open the cart or do something when the cart icon is pressed
                  },
                ),
                cartItemCount > 0
                    ? CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 10,
                        child: Text(
                          '$cartItemCount',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // ... Your product rows here

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: buildProductCard('assets/images/w1.jpg', 'Home Theatre', 'UGX 25000'),
                ),
                Expanded(
                  child: buildProductCard('assets/images/w2.jpg', 'Song', 'UGX 45000'),
                ),
                Expanded(
                  child: buildProductCard('assets/images/w3.jpg', 'Perfect', 'UGX 3000'),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: buildProductCard('assets/images/fr1.jpg', 'Samsung', 'UGX 25000'),
                ),
                Expanded(
                  child: buildProductCard('assets/images/fr2.jpg', 'Hisense', 'UGX 45000'),
                ),
                Expanded(
                  child: buildProductCard('assets/images/fr3.jpg', 'Sony', 'UGX 3000'),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: buildProductCard('assets/images/tv1.jpg', 'SamSung 32"', 'UGX 25000'),
                ),
                Expanded(
                  child: buildProductCard('assets/images/tv3.jpg', 'LED 60"', 'UGX 450000'),
                ),
                Expanded(
                  child: buildProductCard('assets/images/tv4.jpg', 'Hisense 93"', 'UGX 3000'),
                ),
              ],
            ),
             
             
            // ... Repeat your product rows as needed
          ],
        ),
      ),
    );
  }

  Widget buildProductCard(String imageAsset, String productName, String price) {
    return Card(
      margin: EdgeInsets.only(left: 8, right: 8, top: 50),
      shape: RoundedRectangleBorder(
        // side: BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 6.0),
        child: Column(
          children: [
            Image.asset(
              imageAsset,
              height: 65,
              width: 50, 
    
    
            ),
            SizedBox(height: 10.0),
            Text(
              productName,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 32, 32, 32),
              ),
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: EdgeInsets.all(2),
              child: ElevatedButton(
                onPressed: () {
                  // Add the item to the cart
                  setState(() {
                    cartItemCount++;
                  });
                },
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                style: ElevatedButton.styleFrom(
              
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}















