import 'package:flutter/material.dart';
import 'package:task_promina/core/utils/app_colors.dart';
import 'package:task_promina/presentation/home/data/model/ListModel.dart';
import 'package:task_promina/presentation/home/presentation/widget/card_of_task.dart';

class ListOfTasks extends StatelessWidget {
  ListOfTasks({Key? key}) : super(key: key);

  List<ListModel> list = [
    ListModel('', 'Team Meeting', 'Discuss all questions about new projects',
        '10:00 Am'),
    ListModel('', 'Team Meeting', 'Discuss all questions about new projects',
        '10:00 Am'),
    ListModel('', 'Team Meeting', 'Discuss all questions about new projects',
        '10:00 Am'),
    ListModel('', 'Team Meeting', 'Discuss all questions about new projects',
        '10:00 Am'),
    ListModel('', 'Team Meeting', 'Discuss all questions about new projects',
        '10:00 Am'),
    ListModel('', 'Team Meeting', 'Discuss all questions about new projects',
        '10:00 Am'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Container(
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(45),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(left: 30, top: 20),
              child: RawScrollbar(
                thumbColor: Colors.blueAccent[700],
                thickness: 3,
                isAlwaysShown: true,
                trackColor: Colors.white,
                trackBorderColor: Colors.white,
                radius: Radius.circular(5),
                minThumbLength: 4,
                mainAxisMargin: 15,
                scrollbarOrientation: ScrollbarOrientation.left,
                child: Container(
                  height: 200,
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                    left: 30,
                    top: 10,
                    right: 30,
                  ),
                  child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return CardOfTask(
                        model: list[index],
                      );
                    },
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
