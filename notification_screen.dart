import 'package:flutter/material.dart';
import 'package:plant_shop_special_offers_page/core/utils/app_sizes.dart';
import 'package:plant_shop_special_offers_page/core/utils/size_config.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/notification_item.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, dynamic>> notifications = [
  {
    'title': 'KFC Special Discount',
    'subtitle': 'Get discount price for every product',
    'time': 'December 25, 2024',
     'icon': Icons.local_offer,
      'isNew': true,
    },
    {
      'title': 'Top Up E-Wallet Successful',
      'subtitle': 'You have successfully topped up your wallet',
      'time': '1 hour ago',
      'icon': Icons.account_balance_wallet,
      'isNew': true,
    },
    {
      'title': 'New Service Available',
      'subtitle': 'Now you can track your order in real time',
      'time': '2 hours ago',
      'icon': Icons.notifications,
      'isNew': false,
    },
    {
      'title': 'Credit Card Connected',
      'subtitle': 'Credit card successfully connected',
      'time': '1 day ago',
      'icon': Icons.credit_card,
      'isNew': false,
    },
    {
      'title': 'Account Setup Successful',
      'subtitle': 'Your account has been successfully',
      'time': '2 days ago',
      'icon': Icons.check_circle,
      'isNew': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: const CustomAppBar(title: 'Notification'),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.mediumPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Today',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: AppSizes.mediumPadding),
            Expanded(
              child: ListView.builder(
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  final notification = notifications[index];
                  return NotificationItem(
                    title: notification['title'],
                    subtitle: notification['subtitle'],
                    time: notification['time'],
                    icon: notification['icon'],
                    isNew: notification['isNew'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}