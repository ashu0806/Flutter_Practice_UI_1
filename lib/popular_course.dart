import 'package:flutter/material.dart';

class PopularCourse extends StatelessWidget {
  const PopularCourse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SingleCourse(
          particularCourse: "App Design Course",
        ),
        SingleCourse(
          particularCourse: "Web Design Course",
        ),
      ],
    );
  }
}

class SingleCourse extends StatelessWidget {
  const SingleCourse({
    Key? key,
    required this.particularCourse,
  }) : super(key: key);
  final particularCourse;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180,
        width: 150,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 204, 228, 247),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 4, left: 4),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              particularCourse,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: "WorkSans",
                fontWeight: FontWeight.w700,
              ),
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
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/design_course/interFace3.png",
              height: 80,
              width: 250,
            )
          ]),
        ),
      ),
    );
  }
}
