import 'package:artabasco/app/core/utils/constants.dart';
import 'package:artabasco/app/core/utils/responsive.dart';
import 'package:artabasco/app/routes/app_routes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return Container(
      height: 75,
      width: double.infinity,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(
        horizontal: 40,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            offset: const Offset(0, 3),
            color: Colors.black.withAlpha(45),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavItem(
            icon: Icon(
              Icons.home,
              size: responsive.dp(3.5),
            ),
            page: Routes.HOME_VIEW.generateBaseRoute(),
          ),
          NavItem(
            icon: Icon(
              Icons.person,
              size: responsive.dp(3.5),
            ),
            page: Routes.LOGIN_VIEW.generateBaseRoute(),
          ),
          NavItem(
            icon: Icon(
              Icons.shopping_bag,
              size: responsive.dp(3.5),
            ),
            page: Routes.HOME_VIEW.generateBaseRoute(),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class NavItem extends StatelessWidget {
  NavItem({
    Key key,
    @required this.icon,
    @required this.page,
  }) : super(key: key);

  final Icon icon;
  final String page;

  @override
  Widget build(BuildContext context) {
    bool isActive = false;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        IconButton(
          icon: icon,
          color: Colors.blue,
          onPressed: () {
            //isActive = true;
            Get.toNamed(
              page,
            );
          },
        ),
        Spacer(),
        Container(
          height: 4,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isActive ? kPrimaryColor : Colors.transparent,
            boxShadow: [
              BoxShadow(
                blurRadius: 6,
                offset: const Offset(0, -2),
                color: isActive ? kPrimaryColor : Colors.transparent,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
