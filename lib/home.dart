import 'package:flutter/material.dart';

import 'card.dart';
import 'popular_course.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 15,
          ),
          child: ListView(children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Choose your",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontFamily: "Roboto"),
                    ),
                    Text(
                      "Design Course",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: "WorkSans"),
                    ),
                  ],
                ),
                const SizedBox(width: 90),
                Image.asset(
                  "assets/design_course/userImage.png",
                  cacheHeight: 50,
                  cacheWidth: 50,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SizedBox(
                width: 200,
                height: 80,
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      label: Text("Search"),
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.search),
                      hintText: "Search for course"),
                )),
            const SizedBox(height: 10),
            const Text(
              "Category",
              style: TextStyle(
                  fontFamily: "Roboto-Bold",
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 15),
            Row(
              children: const [
                Buttons(
                  courseName: 'UI/UX',
                ),
                Buttons(
                  courseName: "Coding",
                ),
                Buttons(
                  courseName: "Basic UI",
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  return const CourseCard();
                }),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Popular Courses",
              style: TextStyle(
                  fontFamily: "Worksans",
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: const [
                PopularCourse(),
                PopularCourse(),
                PopularCourse(),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
