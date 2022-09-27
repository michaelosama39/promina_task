import 'package:flutter/material.dart';
import 'package:task_promina/core/utils/app_colors.dart';
import 'package:task_promina/presentation/create_new_task/presentation/widget/create_text_field.dart';

class DateWidget extends StatelessWidget {
  DateWidget({Key? key}) : super(key: key);
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Date',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 18,
                ),
              ),
              CreateTextField(
                controller: controller,
                text: 'Monday, 1 June',
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.calendar_today_outlined, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
