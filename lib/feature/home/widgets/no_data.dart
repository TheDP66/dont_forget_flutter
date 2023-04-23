import 'package:flutter/material.dart';

class NoData extends StatelessWidget {
  const NoData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "No Reminders Available",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            "Try to create a new one",
          ),
        ],
      ),
    );
  }
}
