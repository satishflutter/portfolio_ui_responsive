import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:protfolio_ui_responsive/views/blogs/blog.dart';
import 'package:protfolio_ui_responsive/views/works/work.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  var btnColor = "";

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Mobile layout
          return PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: AppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              elevation: 0,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
            ),
          );
        } else {
          // Web layout
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Work()),
                    );
                  },
                  child: Text(
                    "Works",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Blog()));
                  },
                  child: Text(
                    "Blog",
                    style: TextStyle(color: HexColor('#FF6464')),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Contact",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
