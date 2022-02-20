import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.only(
          top: 6,
          left: 4,
        ),
        height: 140,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/design_course/interFace1.png",
              width: 80,
              height: 100,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 6, bottom: 2),
                child: Column(
                  children: [
                    const Text(
                      "User Interface Design",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Roboto"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text("24 lessons"),
                        const SizedBox(width: 30),
                        Row(children: const [
                          Text(
                            "4.3",
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                          )
                        ])
                      ],
                    ),
                    Row(
                      children: [
                        const Text("${25}"),
                        const SizedBox(width: 90),
                        SizedBox(
                          height: 50,
                          width: 30,
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.add,
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({Key? key, required this.courseName}) : super(key: key);
  final String courseName;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 40,
          width: 80,
          child: Center(
            child: Text(
              courseName,
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "WorkSans",
                  fontWeight: FontWeight.w600),
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38.withOpacity(0.5),
                    blurRadius: 2,
                    spreadRadius: 4)
              ]),
        ));
  }
}
