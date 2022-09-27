import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:task_promina/core/utils/app_colors.dart';
import 'package:task_promina/core/utils/date_util.dart';
import 'package:task_promina/presentation/create_new_task/presentation/screen/create_new_task_screen.dart';

class TitleDetailsWidget extends StatelessWidget {
  TitleDetailsWidget({Key? key}) : super(key: key);

  var now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: AppColors.primaryColor,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(45),
              )),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Task',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CreateNewTaskScreen(),
                        ));
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 15, 40, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${DateFormat('EEEE').format(DateTime.now())}, ${DateTime.now().day} ${DateFormat('MMMM').format(DateTime.now())}',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 40, top: 20, right: 5),
                child: ScrollablePositionedList.builder(
                  scrollDirection: Axis.horizontal,
                  initialScrollIndex:
                      int.parse(DateFormat('dd').format(now)) - 1,
                  itemCount: DateUtils.getDaysInMonth(now.year, now.month),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 50,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          color: colorCalendar(
                              index, AppColors.primaryColor, Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: colorCalendar(
                              index,
                              AppColors.primaryColor,
                              AppColors.primaryColor,
                            ),
                          )),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Text(
                              dayNumberOfMonth(index),
                              style: TextStyle(
                                  color: colorCalendar(
                                      index, Colors.white, Colors.black),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              dayNameOfMonth(index)[0],
                              style: TextStyle(
                                  color: colorCalendar(
                                    index,
                                    Colors.white,
                                    AppColors.primaryColor.withOpacity(.6),
                                  ),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color colorCalendar(int index, Color right, Color wrong) {
    return index + 1 == int.parse(DateFormat('d').format(DateTime.now()))
        ? right
        : wrong;
  }
}
