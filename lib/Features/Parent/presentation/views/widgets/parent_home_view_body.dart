import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nexura/Core/utils/app_router.dart';
import 'package:nexura/Core/widgets/custom_appBar.dart';

import 'custom_rounded_button.dart';

class ParentHomeViewBody extends StatelessWidget {
  const ParentHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(title: 'Parent Home'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRoundedButton(
              text: "Student Follow up",
              icon: Icons.person,
              onTap: (){
                GoRouter.of(context).push(AppRouter.kStudentHomeView);
              },
            ),
            const SizedBox(height: 40),
            CustomRoundedButton(
              text: "Wallet Management",
              icon: Icons.wallet_sharp,
              onTap: (){
                GoRouter.of(context).push(AppRouter.kWalletDetailsView);
              },
            ),
            const SizedBox(height: 40),
            CustomRoundedButton(
              text: "Report & Notification",
              icon: Icons.notifications_outlined,
              onTap: (){
                GoRouter.of(context).push(AppRouter.kNotificationsAndReportsView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
