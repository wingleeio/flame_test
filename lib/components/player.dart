import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import 'package:flame_test/utils/constants.dart';

class Player extends SpriteAnimationComponent with HasGameRef {
  final double _movementSpeed = 150.0;
  final double _animSpeed = 0.15;

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

  Direction direction = Direction.down;

  Player() : super(size: Vector2(48, 48));

  @override
  Future<void> onLoad() async {
    super.onLoad();

    final image = await gameRef.images.load('great_sage.png');
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
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (isMovingUp) {
      animation = _walkingUp;
      position.add(Vector2(0, dt * -_movementSpeed));
    }

    if (isMovingDown) {
      animation = _walkingDown;
      position.add(Vector2(0, dt * _movementSpeed));
    }

    if (isMovingLeft) {
      animation = _walkingLeft;
      position.add(Vector2(dt * -_movementSpeed, 0));
    }

    if (isMovingRight) {
      animation = _walkingRight;
      position.add(Vector2(dt * _movementSpeed, 0));
    }

    if (!isMovingUp && !isMovingDown && !isMovingLeft && !isMovingRight) {
      switch (direction) {
        case Direction.up:
          animation = _idleUp;
          break;
        case Direction.down:
          animation = _idleDown;
          break;
        case Direction.left:
          animation = _idleLeft;
          break;
        case Direction.right:
          animation = _idleRight;
          break;
      }
    }
  }
}
