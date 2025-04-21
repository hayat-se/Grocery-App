import 'package:flutter/material.dart';
import 'package:grocery_app/StoreScreen.dart';
import 'package:grocery_app/HomePage.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.orange.shade400,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image(
                    image: AssetImage('images/Char.png'),
                    height: 400,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(25) , topLeft: Radius.circular(25)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage('images/basket.png'),
                        height: 150,
                      ),
                    ),
                    Text(
                      "    Making Grocery\nShopping Effortless",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("The Easiest way to share you family Grocery"),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => GroceryMainPage(),));
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(color: Colors.orange.shade400,
                        borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
