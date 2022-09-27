import 'package:flutter/material.dart';
import 'package:task_promina/core/utils/app_colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: AppColors.primaryColor,
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(42),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 22, top: 40),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    Stack(
                      children: [
                        Icon(Icons.notifications_none, size: 35),
                        Positioned(
                          top: 18,
                          left: 2,
                          child: Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Container(
            height: 100,
            width: 120,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(42),
              ),
            ),
            child: const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avater.jpg'),
                radius: 25,
              ),
            ),
          ),
        )
      ],
    );
  }
}
