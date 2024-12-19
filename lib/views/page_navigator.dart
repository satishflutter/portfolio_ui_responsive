import 'package:flutter/material.dart';
import 'package:protfolio_ui_responsive/utils/footer.dart';
import 'package:protfolio_ui_responsive/utils/header.dart';
import 'package:protfolio_ui_responsive/views/blogs/blog.dart';
import 'package:protfolio_ui_responsive/views/works/work.dart';

class PageNavigator extends StatefulWidget {
  const PageNavigator({Key? key}) : super(key: key);

  @override
  _PageNavigatorState createState() => _PageNavigatorState();
}

class _PageNavigatorState extends State<PageNavigator> {
  // Variable to track the selected page
  Widget _selectedPage = Blog(); // Default to Blog page

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Works'),
              onTap: () {
                setState(() {
                  _selectedPage = Work();
                });
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Blog'),
              onTap: () {
                setState(() {
                  _selectedPage = Blog();
                });
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
              onTap: () {
                Navigator.pop(context); // Handle contact navigation separately
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header(), // Optional Header Widget
            _selectedPage, // Display the selected page
            // Footer(), // Optional Footer Widget
          ],
        ),
      ),
    );
  }
}
