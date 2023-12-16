import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hakawaty/const.dart';

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

class MyStoryList extends StatelessWidget {
  final List<Map<String, String>> topStories = [
    {
      'title': 'Story 1',
      'subtitle': 'Subtitle 1',
      'image': 'assets/images/التراث .jpg'
    },
    {
      'title': 'Story 1',
      'subtitle': 'Subtitle 1',
      'image': 'assets/images/التراث .jpg'
    },
    {
      'title': 'Story 1',
      'subtitle': 'Subtitle 1',
      'image': 'assets/images/التراث .jpg'
    },
    {
      'title': 'Story 1',
      'subtitle': 'Subtitle 1',
      'image': 'assets/images/التراث .jpg'
    },

    // Add more stories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: topStories.length,
      itemBuilder: (context, index) {
        return StoryCard(
          title: topStories[index]['title']!,
          subtitle: topStories[index]['subtitle']!,
          image: topStories[index]['image']!,
        );
      },
    );
  }
}

class StoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  StoryCard({required this.title, required this.subtitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          'Author',
          style: TextStyle(fontWeight: FontWeight.bold, color: kThirdAltColor),
        ),
      ),
      contentPadding: const EdgeInsets.all(8.0),
      leading: Container(
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                  fontSize: 18,
                ),
              ),
              const Gap(4),
              // SizedBox(height: 4.0),
              Text(
                subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w200,
                  color: kDarkColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
