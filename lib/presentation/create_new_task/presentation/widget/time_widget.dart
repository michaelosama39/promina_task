import 'package:flutter/material.dart';
import 'package:task_promina/core/utils/app_colors.dart';
import 'package:task_promina/presentation/create_new_task/presentation/widget/create_text_field.dart';

class TimeWidget extends StatelessWidget {
  TimeWidget({Key? key}) : super(key: key);

  final controllerStartTime = TextEditingController();
  final controllerEndTime = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Start Time',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 18,
                ),
              ),
              CreateTextField(
                controller: controllerStartTime,
                text: '10:00 Am',
              ),
            ],
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'End Time',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 18,
                ),
              ),
              CreateTextField(
                controller: controllerEndTime,
                text: '11:00 Am',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
