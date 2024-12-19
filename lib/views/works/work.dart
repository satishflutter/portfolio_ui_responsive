import 'package:flutter/material.dart';
import 'package:protfolio_ui_responsive/utils/header.dart';
import 'package:protfolio_ui_responsive/views/works/work_content.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Header(),
            WorkContent(),
          ],
        ),
      ),
    );
  }
}
