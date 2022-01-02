import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame_test/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/player.dart';

class RpgGame extends FlameGame with KeyboardEvents {
  final Player _player = Player();

  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(_player);

    _player.position = Vector2(50, 50);
  }

  @override
  KeyEventResult onKeyEvent(
    RawKeyEvent event,
    Set<LogicalKeyboardKey> keysPressed,
  ) {
    final isKeyDown = event is RawKeyDownEvent;

    if (event.logicalKey == LogicalKeyboardKey.keyA) {
      _player.direction = Direction.left;
      _player.isMovingLeft = isKeyDown;
    } else if (event.logicalKey == LogicalKeyboardKey.keyD) {
      _player.direction = Direction.right;
      _player.isMovingRight = isKeyDown;
    } else if (event.logicalKey == LogicalKeyboardKey.keyW) {
      _player.direction = Direction.up;
      _player.isMovingUp = isKeyDown;
    } else if (event.logicalKey == LogicalKeyboardKey.keyS) {
      _player.direction = Direction.down;
      _player.isMovingDown = isKeyDown;
    }

    return super.onKeyEvent(event, keysPressed);
  }
}
