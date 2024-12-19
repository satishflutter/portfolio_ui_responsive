import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.09,
      // color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Icon(Icons.facebook, size: 24.0, color: Colors.blue),
          //     SizedBox(width: 16.0),
          //     Icon(Icons.install_desktop, size: 24.0, color: Colors.black),
          //     SizedBox(width: 16.0),
          //     Icon(Icons.tiktok, size: 24.0, color: Colors.black),
          //     SizedBox(width: 16.0),
          //     Icon(Icons.library_books_outlined,
          //         size: 24.0, color: Colors.black),
          //   ],
          // ),
          Text(
            "Copyright © 2020 All rights reserved",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[900],
            ),
          ),
        ],
      ),
    );
  }
}
