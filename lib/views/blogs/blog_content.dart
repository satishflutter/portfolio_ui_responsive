import 'package:flutter/material.dart';
import 'package:protfolio_ui_responsive/utils/footer.dart';

class BlogContent extends StatelessWidget {
  const BlogContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Screen size
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Standard padding for the page
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Blog Header
            Text(
              "Blog",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: screenWidth < 600 ? 28 : 36, // Responsive header size
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20), // Space below header

            // Blog Container
            Container(
              width: screenWidth < 600
                  ? screenWidth * 0.95
                  : screenWidth * 0.70, // Responsive width
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Blog Posts
                  BlogPost(
                    title: "UI Interactions of the Week",
                    date: "12 Feb 2019 | Express, Handlebars",
                    description:
                        "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                  ),
                  BlogPost(
                    title: "The 'Make My Life Easier' Headlines",
                    date: "12 Feb 2019 | Express, Handlebars",
                    description:
                        "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                  ),
                  BlogPost(
                    title: "Tech Trends in 2024",
                    date: "12 Feb 2019 | Express, Handlebars",
                    description:
                        "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                  ),
                  BlogPost(
                    title: "Health Tips for Busy Professionals",
                    date: "12 Feb 2019 | Express, Handlebars",
                    description:
                        "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                  ),
                  BlogPost(
                    title: "How to Optimize Your Workflow",
                    date: "12 Feb 2019 | Express, Handlebars",
                    description:
                        "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                  ),
                  const SizedBox(height: 20),

                  // Footer
                  Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable BlogPost widget
class BlogPost extends StatelessWidget {
  final String title;
  final String date;
  final String description;

  const BlogPost({
    Key? key,
    required this.title,
    required this.date,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Screen size
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Blog Title
        Text(
          title,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: screenWidth < 600 ? 20 : 24, // Responsive title size
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),

        // Blog Meta Information
        Text(
          date,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: screenWidth < 600 ? 12 : 14, // Responsive meta info size
            color: Colors.grey[600], // Muted color for meta text
          ),
        ),
        const SizedBox(height: 16),

//
        // Blog Description/Paragraph
        Text(
          description,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: screenWidth < 600 ? 14 : 16, // Responsive paragraph size
            color: Colors.black87,
            height: 1.5, // Line height for better readability
          ),
        ),
        const SizedBox(height: 20),

        // Divider Line
        Divider(
          color: Colors.grey[300],
          thickness: 1.5,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
