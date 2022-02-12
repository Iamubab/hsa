import 'package:flutter/material.dart';

class TopMenus extends StatefulWidget {
  @override
  _TopMenusState createState() => _TopMenusState();
}

class _TopMenusState extends State<TopMenus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          TopMenuTiles(name: "Baby Care", imageUrl: "ic_burger", slug: ""),
          TopMenuTiles(
              name: "Feminine Hygine ", imageUrl: "ic_sushi", slug: ""),
          TopMenuTiles(name: "Tooth Care", imageUrl: "ic_pizza", slug: ""),
          TopMenuTiles(name: "Healthcare", imageUrl: "ic_cake", slug: ""),
          TopMenuTiles(name: "Tooth Care", imageUrl: "ic_ice_cream", slug: ""),
          TopMenuTiles(
              name: "Adult Hygine", imageUrl: "ic_soft_drink", slug: ""),
          TopMenuTiles(name: "Cosmetics", imageUrl: "ic_burger", slug: ""),
          TopMenuTiles(name: "Dairy", imageUrl: "ic_sushi", slug: ""),
        ],
      ),
    );
  }
}

class TopMenuTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String slug;

  TopMenuTiles(
      {Key key,
      @required this.name,
      @required this.imageUrl,
      @required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 8, right: 3, top: 5, bottom: 5),
            child: Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Container(
                  width: 90,
                  height: 90,
                  child: Center(
                      child: Image.asset(
                    'assets/images/topmenu/' + imageUrl + ".png",
                    width: 45,
                    height: 45,
                  )),
                )),
          ),
          Text(name,
              style: TextStyle(
                  color: Color(0xFF6e6e71),
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
