import 'package:flutter/material.dart';

import '../../data/model/notification_model.dart';

class NotificationItemWidget extends StatelessWidget {
  final NotificationModel _notification;

  const NotificationItemWidget(this._notification, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Center(
              child: Text(_notification.getAbbreviation),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _notification.title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(_notification.message),
                Text(
                  _notification.timestamp,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
