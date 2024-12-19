import 'package:flutter/material.dart';
import 'package:protfolio_ui_responsive/utils/footer.dart';

class WorkContent extends StatelessWidget {
  const WorkContent({Key? key}) : super(key: key);

  // List of blog data
  final List<Map<String, String>> blogs = const [
    {
      "title": "Designing Dashboards",
      "date": "12 Feb 2019 | Express, Handlebars",
      "description":
          "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
      "image": "assets/images/Rectangle 30.png",
    },
    {
      "title": "Mobile App Development",
      "date": "25 Mar 2020 | Flutter, Dart",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "image": "assets/images/Rectangle 32.png",
    },
    {
      "title": "Web Application UI",
      "date": "10 Jan 2021 | React, JavaScript",
      "description":
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "image": "assets/images/Rectangle 34.png",
    },
    {
      "title": "Holiday Calucation at fingure tips",
      "date": "17 Dec 2019 | React, JavaScript",
      "description":
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "image": "assets/images/Rectangle 40.png",
    },
  ];

  // Function to generate a single blog item (responsive)
  Widget generateBlogItem(
      Map<String, String> blog, BoxConstraints constraints) {
    final bool isMobile = constraints.maxWidth < 600; // Breakpoint for mobile

    return Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: isMobile
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Blog Image for Mobile
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(blog["image"]!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Blog Title
                  Text(
                    blog["title"]!,
                    style: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Blog Meta Information
                  Text(
                    blog["date"]!,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Blog Description
                  Text(
                    blog["description"]!,
                    style: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Divider Line
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1.0,
                  ),
                ],
              )
            : Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image Column (30% width)
                      Flexible(
                        flex: 3,
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage(blog["image"]!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),

                      // Content Column (70% width)
                      Flexible(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Blog Title
                            Text(
                              blog["title"]!,
                              style: const TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 8),

                            // Blog Meta Information
                            Text(
                              blog["date"]!,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 12),

                            // Blog Description
                            Text(
                              blog["description"]!,
                              style: const TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                color: Colors.black87,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Divider Line
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1.5,
                  ),
                ],
              ));
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isMobile =
            constraints.maxWidth < 600; // Breakpoint for mobile

        return SingleChildScrollView(
          child: Container(
            // Dynamically adjust the width based on whether it's mobile or web
            width: isMobile
                ? double.infinity // Full width for mobile
                : MediaQuery.of(context).size.width * 0.7, // 70% width for web
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Page Header
                  const Text(
                    "Work",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Render each blog dynamically
                  Column(
                    children: blogs
                        .map((blog) => generateBlogItem(blog, constraints))
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
