import 'package:doctor_screen/screens/screen_2.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final Size screenSize = MediaQuery.of(context).size;

    // Determine if the screen is in landscape mode
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    // Adjust aspect ratio based on screen orientation
    final double aspectRatio = isLandscape ? screenSize.aspectRatio : 16 / 9;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.symmetric(
              vertical: screenSize.height * 0.03,
              horizontal: screenSize.width * 0.03),
          child: Icon(
            Icons.keyboard_arrow_left_sharp,
            color: Colors.grey,
            size: screenSize.width * 0.05,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: AspectRatio(
              aspectRatio: aspectRatio,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Me.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: screenSize.height * 0.35, // Adjusted height
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      screenSize.width * 0.05), // Adjusted radius
                  topRight: Radius.circular(
                      screenSize.width * 0.05), // Adjusted radius
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(screenSize.width * 0.05),
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: WormEffect(activeDotColor: Colors.white),
                    ),
                  ),
                  Text(
                    "Healthcare Point",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: screenSize.width * 0.08, // Adjusted font size
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Early protection for you and your family",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenSize.width * 0.04, // Adjusted font size
                    ),
                  ),
                  Text(
                    "members to grow up healthily",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenSize.width * 0.04, // Adjusted font size
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: screenSize.height * 0.06,
                    width: screenSize.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(screenSize.width * 0.05),
                    ),
                    child: Center(
                      child: Align(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ScreenTwo(),
                              ),
                            );
                          },
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize:
                                  screenSize.width * 0.05, // Adjusted font size
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
