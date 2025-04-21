import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/ItemPages/AlmondPage.dart';
import 'package:grocery_app/ItemPages/BellPepperPage.dart';
import 'package:grocery_app/ItemPages/BurgerPage.dart';
import 'package:grocery_app/ItemPages/ButterPage.dart';
import 'package:grocery_app/ItemPages/CabbagePage.dart';
import 'package:grocery_app/ItemPages/EggPage.dart';
import 'package:grocery_app/ItemPages/FriesPage.dart';
import 'package:grocery_app/ItemPages/GarlicPage.dart';
import 'package:grocery_app/ItemPages/HoneyPage.dart';
import 'package:grocery_app/ItemPages/KitchupPage.dart';
import 'package:grocery_app/ItemPages/ShwarmaPage.dart';
import 'package:grocery_app/ItemPages/TomatoPage.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> _categories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F9FF),
      body:SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 25),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(Icons.format_list_bulleted, color: Colors.white,),
                        decoration: BoxDecoration(
                          color: Color(0xff222222),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(width: 60),
                      Column(
                        children: [
                          Text('Location', style: TextStyle(fontSize: 12)),
                          Row(
                            children: [
                              Icon(CupertinoIcons.location_solid),
                              SizedBox(width: 10),
                              Text(
                                '4571 Washington Ave',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 80),
                      Container(
                        child: Icon(CupertinoIcons.bell_fill,color: Colors.white,),
                        decoration: BoxDecoration(
                          color: Color(0xff222222),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    height: 210,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color(0xff222222),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff0C0950),
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 25,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Center(
                                    child: Text(
                                      'Deliver within 30 mins',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Free Delivery For Order \nmore than 1500 ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Get fresh Grocery at your Door step \nwith free delivery !',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    'Order Now !',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 8),
                            child: Image(
                              image: AssetImage('images/cardWomen.png'),
                              height: 300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 25),
                  child: Row(
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 250),
                      Text(
                        'See All',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 10,
                      children: [
                        Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color(0xffD4EBF8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text('All')),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xffD4EBF8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text('Fruite')),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xffD4EBF8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text('Fast-Food')),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xffD4EBF8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text('Vegetable')),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xffD4EBF8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text('Bread')),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xffD4EBF8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text('Ghee')),
                        ),
                      ],
                    ),
                  ),
                ), //category
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Center(
                                    child: InkWell(
                                      child: Image(
                                        image: AssetImage('images/burger.png'),
                                        height: 100,
                                      ),
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => BurgerPage(),),);
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Zinger Burger',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Medium', style: TextStyle(fontSize: 10)),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$10.0',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(CupertinoIcons.add, color: Colors.white,),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 30,
                                      width: 30,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 30),
                        Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Center(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Almondpage(),),);
                                      },
                                      child: Image(
                                        image: AssetImage('images/almond.png'),
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Almond',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(' 1 KG', style: TextStyle(fontSize: 10)),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$25.0',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(CupertinoIcons.add, color: Colors.white,),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 30,
                                      width: 30,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),//Items List1 (1,2)
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Center(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => BellPepper(),),);
                                      },
                                      child: Image(
                                        image: AssetImage('images/BellPapper.png'),
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Bell Pepper',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(' 1 KG', style: TextStyle(fontSize: 10)),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$10.0',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(CupertinoIcons.add, color: Colors.white,),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 30,
                                      width: 30,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 30),
                        Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Center(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => EggPage(),),);
                                      },
                                      child: Image(
                                        image: AssetImage('images/eggs.png'),
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Eggs',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(' 12x', style: TextStyle(fontSize: 10)),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$5.0',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(CupertinoIcons.add, color: Colors.white,),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 30,
                                      width: 30,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),//Item List 2 (3,4)
                SizedBox(height: 20),
                Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Expanded(
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Center(
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => KitchupPage(),),);
                              },
                              child: Image(
                                image: AssetImage('images/kitchup.png'),
                                height: 100,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Kitchup',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(' 1 cup', style: TextStyle(fontSize: 10)),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$1.0',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              child: Icon(CupertinoIcons.add, color: Colors.white,),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: 30,
                              width: 30,
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  height: 200,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Center(
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => CabbagePage(),),);
                              },
                              child: Image(
                                image: AssetImage('images/Cabbage.png'),
                                height: 100,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Cabbage',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(' 1 KG', style: TextStyle(fontSize: 10)),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$10.0',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              child: Icon(CupertinoIcons.add, color: Colors.white,),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              height: 30,
                              width: 30,
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ), //Item List 3 (5,6)
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Center(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ShwarmaPage(),),);
                                      },
                                      child: Image(
                                        image: AssetImage('images/shwarma.png'),
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Shwarma',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(' 1x', style: TextStyle(fontSize: 10)),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$5.0',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(CupertinoIcons.add, color: Colors.white,),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 30,
                                      width: 30,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 30),
                        Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Center(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => HoneyPage(),),);
                                      },
                                      child: Image(
                                        image: AssetImage('images/honey.png'),
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Honey',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(' 500 ml', style: TextStyle(fontSize: 10)),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$12.0',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(CupertinoIcons.add, color: Colors.white,),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 30,
                                      width: 30,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ), //Item List 4 (7,8)
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Center(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => TomatoPage(),),);
                                      },
                                      child: Image(
                                        image: AssetImage('images/TomatoMax.png'),
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Tomato',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(' 1 KG', style: TextStyle(fontSize: 10)),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$5.0',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(CupertinoIcons.add, color: Colors.white,),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 30,
                                      width: 30,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 30),
                        Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Center(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => FriesPage(),),);
                                      },
                                      child: Image(
                                        image: AssetImage('images/fries.png'),
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'French Fries',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Small Bucket', style: TextStyle(fontSize: 10)),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$10.0',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(CupertinoIcons.add, color: Colors.white,),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 30,
                                      width: 30,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ), //Item List 5 (9,10)
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Center(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ButterPage(),),);
                                      },
                                      child: Image(
                                        image: AssetImage('images/butter.png'),
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Butter',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(' 500 g', style: TextStyle(fontSize: 10)),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$8.0',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(CupertinoIcons.add, color: Colors.white,),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 30,
                                      width: 30,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 30),
                        Container(
                          height: 200,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Center(
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => GarlicPage(),),);
                                      },
                                      child: Image(
                                        image: AssetImage('images/Garlic.png'),
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Garlic',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('1 KG', style: TextStyle(fontSize: 10)),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$8.0',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Icon(CupertinoIcons.add, color: Colors.white,),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      height: 30,
                                      width: 30,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ), //Item List 6 (11,12)
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
    );
  }
}
