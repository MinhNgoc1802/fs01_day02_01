import 'package:flutter/material.dart';
import '/common/common.dart';
import '/models/models.dart';
import '/themes/themes.dart';
import '/widgets/widgets.dart';

class AllWidgets extends StatelessWidget {
  const AllWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Message dummyData = Message.getDummyMessages.first;

    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      appBar: AppBar(
        title: const Text('All widgets page'),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
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
