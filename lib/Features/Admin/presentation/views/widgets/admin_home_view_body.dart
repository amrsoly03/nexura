import 'package:flutter/material.dart';
import 'package:focused_menu/modals.dart';
import 'package:nexura/Core/widgets/custom_appBar.dart';

import '../../../../../Core/functions/capitalize.dart';
import '../../../../../Core/utils/size_config.dart';
import '../../../../../Core/utils/styles.dart';
import '../../../../../Core/utils/theme.dart';
import 'admin_home_container.dart';

class AdminHomeViewBody extends StatelessWidget {
  const AdminHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Home'),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          width: SizeConfig.screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AdminHomeContainer(
                title: 'manage users',
                menuItems: [
                  FocusedMenuItem(
                    title: Text(
                      capitalize('add user'),
                      style: Styles.textStyle18,
                    ),
                    trailingIcon: const Icon(Icons.add),
                    backgroundColor: darkBlue,
                    onPressed: () {},
                  ),
                  FocusedMenuItem(
                    title: Text(
                      capitalize('edit user'),
                      style: Styles.textStyle18,
                    ),
                    trailingIcon: const Icon(Icons.edit),
                    backgroundColor: darkBlue,
                    onPressed: () {},
                  ),
                ],
              ),
              AdminHomeContainer(
                title: 'subject features',
                menuItems: [
                  FocusedMenuItem(
                    title: Text(
                      capitalize('approve subject'),
                      style: Styles.textStyle18,
                    ),
                    trailingIcon: const Icon(Icons.check),
                    backgroundColor: darkBlue,
                    onPressed: () {},
                  ),
                  FocusedMenuItem(
                    title: Text(
                      capitalize('add degrees'),
                      style: Styles.textStyle18,
                    ),
                    trailingIcon: const Icon(Icons.add),
                    backgroundColor: darkBlue,
                    onPressed: () {},
                  ),
                  FocusedMenuItem(
                    title: Text(
                      capitalize('add exam'),
                      style: Styles.textStyle18,
                    ),
                    trailingIcon: const Icon(Icons.add),
                    backgroundColor: darkBlue,
                    onPressed: () {},
                  ),
                ],
              ),
              AdminHomeContainer(
                title: 'reports',
                menuItems: [
                  FocusedMenuItem(
                    title: Text(
                      capitalize('send report'),
                      style: Styles.textStyle18,
                    ),
                    trailingIcon: const Icon(Icons.send),
                    backgroundColor: darkBlue,
                    onPressed: () {},
                  ),
                  FocusedMenuItem(
                    title: Text(
                      capitalize('view sent report'),
                      style: Styles.textStyle18,
                    ),
                    trailingIcon: const Icon(Icons.mail_outline),
                    backgroundColor: darkBlue,
                    onPressed: () {},
                  ),
                  FocusedMenuItem(
                    title: Text(
                      capitalize('activities notifications'),
                      style: Styles.textStyle18,
                    ),
                    trailingIcon: const Icon(Icons.notifications_outlined),
                    backgroundColor: darkBlue,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
