import 'package:flutter/material.dart';
import 'package:iplanet/screens/planetDetail/view.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            bottom: -650,
            child: Hero(
              tag: "earth",
              child: ModelViewer(
                src: 'assets/earth.glb',
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                alt: "A 3D model of an astronaut",
                cameraOrbit: "0m 1.2m -0.5m",
                ar: true,
                autoRotate: true,
                cameraControls: false,
                enablePan: true,
              ),
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            top: 150,
            child: Column(
              children: const [
                Hero(
                  tag: "earthText",
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        "EARTH",
                        style: TextStyle(
                            fontSize: 110,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                ),
                Text(
                  "The Home Planet",
                  style: TextStyle(fontSize: 16, letterSpacing: 2),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 15,
            right: 0,
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withOpacity(0.4),
                    offset: Offset(-10, 13),
                    blurRadius: 20,
                    spreadRadius: 20)
              ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "AT\nDAY",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "30˚",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "AT\nNIGHT",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "23˚",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder<Null>(
                              pageBuilder: (BuildContext context,
                                  Animation<double> animation,
                                  Animation<double> secondaryAnimation) {
                                return AnimatedBuilder(
                                    animation: animation,
                                    builder:
                                        (BuildContext context, Widget? child) {
                                      return Opacity(
                                        opacity: animation.value,
                                        child: PlanetDetails(),
                                      );
                                    });
                              },
                              transitionDuration: Duration(milliseconds: 600)),
                        );
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
