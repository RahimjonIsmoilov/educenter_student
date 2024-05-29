import 'package:educenter_student/home_page/toptap.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.window,
              color: Colors.deepPurple,
              size: 39,
            )),
        actions: [
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.only(right: 16),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/avatar.png'),
                backgroundColor: Colors.deepPurple,
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(400),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hello, Rahimjon",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "What do you want to learn?",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 22, bottom: 22),
                    child: SizedBox(
                      height: 44,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search...",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)))),
                      ),
                    ),
                  ),
                  const Image(
                    image: AssetImage(
                      "images/newcourse.png",
                    ),
                    width: 343,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "course",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text("View All",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        TopTab(
                          textcolor: Colors.grey,
                          caption: "All",
                          withcont: 23,
                          concolor: Colors.white,
                          isActive: false,
                        ),
                        TopTab(
                          caption: 'Design',
                          withcont: 76,
                          concolor: Colors.deepPurple,
                          textcolor: Colors.white,
                          isActive: false,
                        ),
                        TopTab(
                          caption: 'Programming',
                          withcont: 114,
                          concolor: Colors.white,
                          textcolor: Colors.grey,
                          isActive: false,
                        ),
                        TopTab(
                          caption: 'UI/UX',
                          withcont: 46,
                          concolor: Colors.white,
                          textcolor: Colors.grey,
                          isActive: true,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: ListView(
          children: const [
            Courses(),
            Courses(),
            Courses(),
            Courses(),
            Courses(),
            Courses(),
            Courses(),
            Courses(),
          ],
        ),
      ),
    );
  }
}



class Courses extends StatelessWidget {
  const Courses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 361,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 30, top: 15, bottom: 15),
            height: 68,
            width: 68,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16)),
            child: const Image(image: AssetImage('images/camera.png')),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Photoshop Course",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 9),
                    child: Icon(
                      Icons.star_rate_rounded,
                      color: Colors.yellow,
                    ),
                  ),
                  Text(
                    "5.0",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 9),
                    child: Icon(
                      Icons.watch_later_rounded,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "5h 15m",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
