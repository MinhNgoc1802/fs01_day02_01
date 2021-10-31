import 'package:flutter/material.dart';
import 'package:fs01_day02_01/common/rectangle_button.dart';
import 'package:fs01_day02_01/models/message.dart';
import 'package:fs01_day02_01/themes/app_colors.dart';
import 'package:fs01_day02_01/widgets/widgets.dart';

class AllWidgets extends StatelessWidget {
  const AllWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Message dummyData = Message.getDummyMessages.first;

    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      appBar: AppBar(
        title: const Text('All widgets page'),
        leading: const BackButton(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const BackButton(),
          const CircleOnline(),
          const NewMessageNumber(number: 3),
          Avatar(
            imageUrl: dummyData.imageUrl,
            size: 60.0,
            isOnline: true,
          ),
          Avatar(
            imageUrl: dummyData.imageUrl,
            newMessageNumber: dummyData.numberNewMessages,
          ),
          MessageItemWidget(
            message: dummyData,
          ),
          RectangleButton(
              title: 'Rectangle Button',
              callback: () {
                debugPrint('Xin chao!');
              })
        ],
      ),
    );
  }
}
