import 'package:flutter/material.dart';
import 'package:task_promina/core/utils/app_colors.dart';

class SelectCategoryWidget extends StatefulWidget {
  const SelectCategoryWidget({Key? key}) : super(key: key);

  @override
  State<SelectCategoryWidget> createState() => _SelectCategoryWidgetState();
}

class _SelectCategoryWidgetState extends State<SelectCategoryWidget> {
  List<String> list = [
    'Development',
    'Research',
    'Design',
    'Development',
    'Research',
    'Design',
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select Category',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 18,
              ),
            ),
            Text(
              'see all',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 7,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.05,
          child: ListView.builder(
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: _selectedIndex == index
                          ? AppColors.primaryColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.blue,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        list[index],
                        style: TextStyle(
                          color: _selectedIndex == index
                              ? Colors.white
                              : AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
