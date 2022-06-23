import 'package:flutter/material.dart';
import 'package:iplanet/models/planet_model.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class PlanetDetails extends StatelessWidget {
  final PlaneModel? planetModel;
  const PlanetDetails({Key? key, this.planetModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Positioned.fill(
            child: Hero(
              tag: "earth",
              child: ModelViewer(
                src: 'assets/earth.glb',
                backgroundColor: Colors.transparent,
                alt: "A 3D model of an astronaut",
                ar: true,
                touchAction: TouchAction.none,
                autoRotate: true,
                cameraControls: true,
                enablePan: true,
              ),
            ),
          ),
          Positioned(
            top: 25,
            right: 10,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            left: 25,
            right: 25,
            top: MediaQuery.of(context).size.height / 2 - 320,
            child: const Hero(
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
          ),
        ]),
      ),
    );
  }
}
