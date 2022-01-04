import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:flame_test/data/data.pbserver.dart' as $d;

class Player extends SpriteAnimationComponent with HasGameRef {
  final TextComponent label = TextComponent(
    position: Vector2(24, -24),
    anchor: Anchor.topCenter,
    textRenderer: TextPaint(
      style: const TextStyle(
        fontSize: 14.0,
        fontFamily: "Dogica",
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    ),
  );
  final double _animSpeed = 0.15;
  final String character;
  late final SpriteAnimation _walkingUp;
  late final SpriteAnimation _walkingDown;
  late final SpriteAnimation _walkingLeft;
  late final SpriteAnimation _walkingRight;

  late final SpriteAnimation _idleUp;
  late final SpriteAnimation _idleDown;
  late final SpriteAnimation _idleLeft;
  late final SpriteAnimation _idleRight;

  bool isMovingUp = false;
  bool isMovingDown = false;
  bool isMovingLeft = false;
  bool isMovingRight = false;

  $d.Direction direction = $d.Direction.DOWN;

  Player(this.character) : super(size: Vector2(48, 48));

  @override
  Future<void> onLoad() async {
    super.onLoad();

    final image = await gameRef.images.load(character);
    final sprite = SpriteSheet(
      image: image,
      srcSize: Vector2(24, 24),
    );

    _walkingUp = sprite.createAnimation(row: 3, stepTime: _animSpeed, to: 3);
    _walkingDown = sprite.createAnimation(row: 0, stepTime: _animSpeed, to: 3);
    _walkingLeft = sprite.createAnimation(row: 1, stepTime: _animSpeed, to: 3);
    _walkingRight = sprite.createAnimation(row: 2, stepTime: _animSpeed, to: 3);

    _idleUp = sprite.createAnimation(row: 3, stepTime: _animSpeed, to: 1);
    _idleDown = sprite.createAnimation(row: 0, stepTime: _animSpeed, to: 1);
    _idleLeft = sprite.createAnimation(row: 1, stepTime: _animSpeed, to: 1);
    _idleRight = sprite.createAnimation(row: 2, stepTime: _animSpeed, to: 1);

    animation = _idleDown;

    add(label);
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (isMovingUp) {
      animation = _walkingUp;
    }

    if (isMovingDown) {
      animation = _walkingDown;
    }

    if (isMovingLeft) {
      animation = _walkingLeft;
    }

    if (isMovingRight) {
      animation = _walkingRight;
    }

    if (!isMovingUp && !isMovingDown && !isMovingLeft && !isMovingRight) {
      switch (direction) {
        case $d.Direction.UP:
          animation = _idleUp;
          break;
        case $d.Direction.DOWN:
          animation = _idleDown;
          break;
        case $d.Direction.LEFT:
          animation = _idleLeft;
          break;
        case $d.Direction.RIGHT:
          animation = _idleRight;
          break;
      }
    }
  }
}

class Direction {}
