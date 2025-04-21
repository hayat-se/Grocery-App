import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GarlicPage extends StatefulWidget {
  const GarlicPage({super.key});

  @override
  State<GarlicPage> createState() => _TomatoPageState();
}

class _TomatoPageState extends State<GarlicPage> {
  bool _isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Garlic',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: (){
              setState(() {
                _isClicked = !_isClicked;
              });
            },
              child: Icon(
                _isClicked ? CupertinoIcons.star_fill : CupertinoIcons.star,
                color: _isClicked ? Colors.orange : Colors.grey,
                // icon :  isClicked ?? CupertinoIcons.star_fill : (CupertinoIcons.star),
              ),
          ),
          SizedBox(width: 30),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 500,
                  color: Colors.grey.shade300,
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('images/Garlic.png'),
                        height: 300,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 270),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    width: double.infinity,
                    height: 450,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              height: 25,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  '20% Off',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'Garlic',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                CupertinoIcons.star_fill,
                                color: Colors.orange,
                                size: 15,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 3),
                              Text(
                                '(207 Reviews)',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 100),
                              Text(
                                '\$30',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text('kg', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Fresh, aromatic garlic full of bold flavor. A must-have ingredient for seasoning, cooking, and boosting immunity naturally.',
                          ),
                          SizedBox(height: 150),
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Colors.orange,
                                    width: 1.5,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        CupertinoIcons.delete,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(width: 25),
                                      Text('1', style: TextStyle(fontSize: 20)),
                                      SizedBox(width: 28),
                                      Icon(
                                        CupertinoIcons.add,
                                        color: Colors.orange,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                height: 50,
                                width: 240,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 50),
                                      Icon(
                                        CupertinoIcons.cart,
                                        color: Colors.black,
                                        size: 25,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        'Add to Cart',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
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
          ],
        ),
      ),
    );
  }
}
