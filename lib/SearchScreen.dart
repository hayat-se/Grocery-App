import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Models/Items.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  List<GroceryItem> _items = [
    GroceryItem(itemName: 'Almond',imageUrl: 'images/almond.png',description: 'Fresh Almond'),
    GroceryItem(itemName: 'Tomato',imageUrl: 'images/TomatoMax.png',description: 'Fresh Tomato'),
    GroceryItem(itemName: 'Shwarma',imageUrl: 'images/shwarma.png',description: 'Spicy Shwarma'),
    GroceryItem(itemName: 'Cabbage',imageUrl: 'images/Cabbage.png',description: 'Fresh Cabbage'),
    GroceryItem(itemName: 'Kitchup',imageUrl: 'images/kitchup.png',description: 'Tomato Kitchup'),
    GroceryItem(itemName: 'Garlic',imageUrl: 'images/Garlic.png',description: 'Fresh Garlic'),
    GroceryItem(itemName: 'Eggs',imageUrl: 'images/eggs.png',description: 'Healthy Egg'),
    GroceryItem(itemName: 'Zinger Burger',imageUrl: 'images/burger.png',description: 'Spicy Zinder Burger'),
    GroceryItem(itemName: 'French Fries',imageUrl: 'images/fries.png',description: 'Hot Fries'),
    GroceryItem(itemName: 'Bell Pepper',imageUrl: 'images/BellPapper.png',description: 'Fresh Bell Pepper'),
    GroceryItem(itemName: 'Butter',imageUrl: 'images/butter.png',description: 'Healthy Butter'),
    GroceryItem(itemName: 'Honey',imageUrl: 'images/honey.png',description: 'Fresh Honey'),

  ];
  List<GroceryItem> _foundedItems = [];
  onSearch(String search){
    setState(() {
      _foundedItems = _items.where((itemName) => itemName.itemName!.toLowerCase().contains(search.toLowerCase())).toList();
    });
  }
  @override

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _foundedItems = _items;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F9FF),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity,80),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey.shade900,
          title: Column(
            children: [
              SizedBox(height:15,),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade800,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey.shade500,fontSize: 16),
                  contentPadding: EdgeInsets.all(0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade500,),
                ),
                onChanged: (value) => onSearch(value),
                ),
            ],
          ),
          ),
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xffE8F9FF),
          child:_foundedItems.length > 0 ? ListView.builder(
            itemCount: _foundedItems.length,
            itemBuilder: (context, index) {
              return showItem(itemName: _foundedItems[index]);
            },
          ) : Center(child: Text('No Item Found',style: TextStyle(color: Colors.black),))
        )
      ),
    );
  }
}

showItem({required GroceryItem itemName}){
  return Container(
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffD4EBF8),
          borderRadius: BorderRadius.circular(50)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
          child: Row(
            children: [
              Image(image: AssetImage(itemName.imageUrl.toString()),height: 50,),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(itemName.itemName.toString(),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold ),),
                  Text(itemName.description.toString(),style: TextStyle(color: Colors.grey.shade800,fontSize: 12),)
                ],
              )

            ],
          ),
        ),
      ),
    ),
  );
}
