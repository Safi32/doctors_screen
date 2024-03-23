import 'package:doctor_screen/widgets/circle.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month), label: "Appointment"),
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/Me.jpg",
                  ),
                  radius: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Safiullah ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 70),
                Container(
                  height: 60,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.notification_add,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.menu,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  "Let's Find",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Text(
                  "your suitable doctor",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purple.shade100,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 25,
                                vertical: 20,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      color: Colors.purple,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.heart_broken,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30,
                                  ),
                                  child: Text(
                                    "Cardio",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                children: [
                                  Text(
                                    "12 doctors",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                children: [
                                  CircleWidget(
                                    image: "assets/Me.jpg",
                                  ),
                                  CircleWidget(
                                    image: "assets/Me.jpg",
                                  ),
                                  CircleWidget(
                                    image: "assets/Me.jpg",
                                  ),
                                  CircleWidget(
                                    text: "+9",
                                    image: null,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue.shade100,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 20,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/tooth.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                children: [
                                  Text(
                                    "Dental",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                children: [
                                  Text(
                                    "6 doctors",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                children: [
                                  CircleWidget(
                                    image: "assets/Me.jpg",
                                  ),
                                  CircleWidget(
                                    image: "assets/Me.jpg",
                                  ),
                                  CircleWidget(
                                    image: "assets/Me.jpg",
                                  ),
                                  CircleWidget(
                                    text: "+3",
                                    image: null,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Doctors",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 180,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const FractionallySizedBox(
                widthFactor: 1,
                heightFactor: 0.9,
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(
                        "assets/Me.jpg",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Safiullah Shahid",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          child: Text(
                            "Bristol Hospital",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                          child: Text(
                            "Cardiology",
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 5,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.purple,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  "4:30PM-7:30PM",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
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
