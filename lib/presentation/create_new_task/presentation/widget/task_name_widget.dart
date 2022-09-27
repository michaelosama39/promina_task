import 'package:flutter/material.dart';
import 'package:task_promina/core/utils/app_colors.dart';
import 'package:task_promina/presentation/create_new_task/presentation/widget/create_text_field.dart';

class TaskNameWidget extends StatelessWidget {
  TaskNameWidget({Key? key}) : super(key: key);
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.centerLeft,
          child: Text(
            'Task Name',
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 18,
            ),
          ),
        ),
        CreateTextField(
          controller: controller,
          text: 'Team Meeting',
        ),
      ],
    );
  }
}
