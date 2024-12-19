import 'package:flutter/material.dart';
import 'package:protfolio_ui_responsive/utils/footer.dart';
import 'package:protfolio_ui_responsive/utils/header.dart';
import 'package:protfolio_ui_responsive/views/blogs/blog_content.dart';

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Header(),
            BlogContent(),
          ],
        ),
      ),
    );
  }
}
