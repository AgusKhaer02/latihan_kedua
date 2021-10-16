import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[200]),
              child: TextFormField(
                controller: searchController,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Search...",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              child: Wrap(
                spacing: 3,
                runSpacing: 3,
                children: [
                  CategoryItem(category: "Health", bgColor: Colors.green,),
                  CategoryItem(category: "Sports", bgColor: Colors.blue,),
                  CategoryItem(category: "Education", bgColor: Colors.purple,),
                  CategoryItem(category: "Food", bgColor: Colors.red,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String category;
  final Color bgColor;
  const CategoryItem({
    Key? key, required this.category, required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            right: 10,
            child: Text(
              category,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
