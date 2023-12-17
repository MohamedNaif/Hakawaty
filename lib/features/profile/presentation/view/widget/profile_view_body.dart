import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hakawaty/const.dart';

import '../../../data/my_story_list_data.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('الصفحة الشخصية'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // Handle the icon tap (e.g., open a user settings screen)
            },
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        // color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(30),
              const Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                color: kThirdColor,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: kThirdAltColor,
                        radius: 55,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                              'assets/images/photo_2023-12-14_16-40-34.jpg'),
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'الأسم: محمد محمد نايف',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'your.email@example.com :الإيميل',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 12),
                      Text(
                        ' +20 (123) 456-7890 :رقم الهاتف',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'العمر : 22',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(30),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    'كتبي المفضلة',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              Expanded(child: MyStoryList())
            ],
          ),
        ),
      ),
    );
  }
}
