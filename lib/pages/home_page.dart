import 'package:flutter/material.dart';
import '/common/common.dart';
import '/themes/app_colors.dart';
import 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            RectangleButton(
              title: 'All Widgets Page',
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AllWidgets();
                    },
                  ),
                );
              },
            ),
            const SizedBox(
              height: 100,
            ),
            RectangleButton(
              title: 'Message List Page',
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MessageListPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
