import 'package:flutter/material.dart';
import 'package:task_promina/presentation/create_new_task/presentation/widget/create_BTN.dart';
import 'package:task_promina/presentation/create_new_task/presentation/widget/date_widget.dart';
import 'package:task_promina/presentation/create_new_task/presentation/widget/description_widget.dart';
import 'package:task_promina/presentation/create_new_task/presentation/widget/select_category_widget.dart';
import 'package:task_promina/presentation/create_new_task/presentation/widget/task_name_widget.dart';
import 'package:task_promina/presentation/create_new_task/presentation/widget/time_widget.dart';

class CreateNewTaskScreen extends StatefulWidget {
  const CreateNewTaskScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewTaskScreen> createState() => _CreateNewTaskScreenState();
}

class _CreateNewTaskScreenState extends State<CreateNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  IconButton(
                    icon: Icon(Icons.menu, color: Colors.black),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Create New Task',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.description_outlined,
                    color: Colors.blue.withOpacity(0.7),
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TaskNameWidget(),
              SizedBox(
                height: 30,
              ),
              SelectCategoryWidget(),
              SizedBox(
                height: 30,
              ),
              DateWidget(),
              SizedBox(
                height: 30,
              ),
              TimeWidget(),
              SizedBox(
                height: 30,
              ),
              DescriptionWidget(),
              SizedBox(
                height: 50,
              ),
              CreateBTN(),
            ],
          ),
        ),
      )),
    );
  }
}
