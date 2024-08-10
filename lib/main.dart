import 'package:flutter/material.dart';
import 'package:score_slam_basketball_points_counter_app/services/splash_screen.dart';

void main() {
  SplashScreen();
  runApp(const BasketballPointsCounter());
}

class BasketballPointsCounter extends StatefulWidget {
  const BasketballPointsCounter({super.key});

  @override
  State<BasketballPointsCounter> createState() =>
      _BasketballPointsCounterState();
}

class _BasketballPointsCounterState extends State<BasketballPointsCounter> {
  int Team_A_Points = 0;
  int Team_B_Points = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff9EC8B9),
        appBar: AppBar(
          title: const Text(
            "Score Slam",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xff092635),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(fontSize: 40, color: Color(0xff1B4242)),
                    ),
                    Text(
                      "$Team_A_Points",
                      style: const TextStyle(
                          fontSize: 150, color: Color(0xff5C8374)),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Color(0xff1B4242),
                        ),
                        onPressed: () {
                          setState(() {
                            Team_A_Points++;
                          });
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Color(0xff1B4242),
                        ),
                        onPressed: () {
                          setState(() {
                            Team_A_Points += 2;
                          });
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Color(0xff1B4242),
                        ),
                        onPressed: () {
                          setState(() {
                            Team_A_Points += 3;
                          });
                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 470,
                  child: VerticalDivider(
                    color: Color(0xff092635),
                    thickness: 2,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(fontSize: 40, color: Color(0xff1B4242)),
                    ),
                    Text(
                      "$Team_B_Points",
                      style: TextStyle(fontSize: 150, color: Color(0xff5C8374)),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Color(0xff1B4242),
                        ),
                        onPressed: () {
                          setState(() {
                            Team_B_Points++;
                          });
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Color(0xff1B4242),
                        ),
                        onPressed: () {
                          setState(() {
                            Team_B_Points += 2;
                          });
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Color(0xff1B4242),
                        ),
                        onPressed: () {
                          setState(() {
                            Team_B_Points += 3;
                          });
                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Color(0xff092635),
                ),
                onPressed: () {
                  setState(() {
                    Team_A_Points = 0;
                    Team_B_Points = 0;
                  });
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
          ],
        ),
      ),
    );
  }
}
