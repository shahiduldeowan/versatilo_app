import '../model/notification_model.dart';

List<NotificationModel> notifications = const <NotificationModel>[
  NotificationModel(
    id: 1,
    title: 'New Message',
    message: 'You have a new message from John Doe',
    timestamp: '10 minutes ago',
  ),
  NotificationModel(
    id: 4,
    title: 'New Comment',
    message: 'John Doe commented on your post',
    timestamp: '30 minutes ago',
  ),
  NotificationModel(
    id: 5,
    title: 'New Like',
    message: 'John Doe liked your post',
    timestamp: '45 minutes ago',
  ),
  NotificationModel(
    id: 6,
    title: 'New Share',
    message: 'John Doe shared your post',
    timestamp: '1 hour ago',
  ),
  NotificationModel(
    id: 2,
    title: 'New Order',
    message: 'Your order has been shipped',
    timestamp: '1 hour ago',
  ),
  NotificationModel(
    id: 3,
    title: 'New Follower',
    message: 'John Doe is now following you',
    timestamp: '2 hours ago',
  ),
  NotificationModel(
    id: 7,
    title: 'New Event',
    message: 'You have been invited to a new event',
    timestamp: '2 hours ago',
  ),
  NotificationModel(
    id: 8,
    title: 'New Task',
    message: 'You have a new task assigned to you',
    timestamp: '3 hours ago',
  ),
  NotificationModel(
    id: 9,
    title: 'New Update',
    message: 'A new update is available for your app',
    timestamp: '4 hours ago',
  ),
  NotificationModel(
    id: 10,
    title: 'New Alert',
    message: 'A new alert has been triggered',
    timestamp: '1 day ago',
  ),
];
