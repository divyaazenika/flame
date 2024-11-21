import 'dart:async'; 
import 'package:dasar_flame/component/ship.dart';
import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/painting.dart';

class BgParallaxComponent extends ParallaxComponent with HasGameRef {
  final List<ParallaxImageData> _parallaxImages = [
    ParallaxImageData("parallax/bkgd_0.png"),
    ParallaxImageData("parallax/bkgd_1.png"),
    ParallaxImageData("parallax/bkgd_2.png"),
    ParallaxImageData("parallax/bkgd_3.png"),
    ParallaxImageData("parallax/bkgd_4.png"),
    ParallaxImageData("parallax/bkgd_5.png"),
    ParallaxImageData("parallax/bkgd_6.png"),
  ];

  @override 
  FutureOr<void> onLoad() async {
    parallax = await game.loadParallax( // Use gameRef to load parallax
      _parallaxImages,
      baseVelocity: Vector2(-10, 0), // Corrected 'Valocity' to 'Velocity'
      velocityMultiplierDelta: Vector2(1, 1),
      repeat: ImageRepeat.repeat,
    );
  }

  void changeSpeedBasedShip(Ship player){
    if(parallax != null){
       parallax!.baseVelocity = player.arah * 10;
    }
  }
  }