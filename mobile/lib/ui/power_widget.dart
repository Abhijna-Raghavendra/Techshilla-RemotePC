import 'package:flutter/material.dart';

class PowerWidget extends StatelessWidget {
  const PowerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double cardWidth = screenWidth * 0.425;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset('assets/images/battery.png'),
        ),
        Row(
          children: [
            Card(
              margin: EdgeInsets.only(
                left: screenWidth * 0.05,
                right: screenWidth * 0.025,
                top: screenHeight * 0.03,
              ),
              color: const Color(0xff24293e),
              child: SizedBox(
                width: cardWidth,
                height: cardWidth,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/sleep.png'),
                      const Text(
                        'Sleep',
                        style:
                            TextStyle(color: Color(0xfff4f5fc), fontSize: 18),
                      )
                    ]),
              ),
            ),
            Card(
                margin: EdgeInsets.only(
                  left: screenWidth * 0.025,
                  right: screenWidth * 0.05,
                  top: screenHeight * 0.03,
                ),
                color: const Color(0xff24293e),
                child: SizedBox(
                  width: cardWidth,
                  height: cardWidth,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/hibernate.png'),
                        const Text(
                          'Hibernate',
                          style:
                              TextStyle(color: Color(0xfff4f5fc), fontSize: 18),
                        )
                      ]),
                )),
          ],
        ),
        Row(
          children: [
            Card(
              margin: EdgeInsets.only(
                  left: screenWidth * 0.05,
                  right: screenWidth * 0.025,
                  top: screenWidth * 0.05),
              color: const Color(0xff24293e),
              child: SizedBox(
                width: cardWidth,
                height: cardWidth,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/images/restart.png'),
                      const Text(
                        'Restart',
                        style:
                            TextStyle(color: Color(0xfff4f5fc), fontSize: 18),
                      )
                    ]),
              ),
            ),
            Card(
                margin: EdgeInsets.only(
                    left: screenWidth * 0.025,
                    right: screenWidth * 0.05,
                    top: screenWidth * 0.05),
                color: const Color(0xff24293e),
                child: SizedBox(
                  width: cardWidth,
                  height: cardWidth,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/shutdown.png'),
                        const Text(
                          'Shutdown',
                          style:
                              TextStyle(color: Color(0xfff4f5fc), fontSize: 18),
                        )
                      ]),
                )),
          ],
        ),
      ],
    );
  }
}
