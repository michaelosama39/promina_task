import 'package:flutter/material.dart';
import 'package:task_promina/core/utils/app_colors.dart';
import 'package:task_promina/presentation/home/presentation/widget/header_widget.dart';
import 'package:task_promina/presentation/home/presentation/widget/list_of_tasks.dart';
import 'package:task_promina/presentation/home/presentation/widget/title_details_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColors.primaryColor,
              child: Container(
                height: 325,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    HeaderWidget(),
                    TitleDetailsWidget(),
                  ],
                ),
              ),
            ),
            ListOfTasks(),
          ],
        ),
      ),
    );
  }
}
