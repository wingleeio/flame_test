import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flame_test/core/rpg_server.dart';
import 'package:flame_test/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/player.dart';

class RpgGame extends FlameGame with KeyboardEvents {
  final Map _players = {};
  final RpgServer _rpgServer = RpgServer();

  bool _musicPlaying = false;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    _rpgServer.initialize();

    _rpgServer.addListener("initializePlayers", handleInitializePlayers);
    _rpgServer.addListener("playerJoined", handlePlayerJoined);
    _rpgServer.addListener("playerDisconnected", handlePlayerDisconnected);
    _rpgServer.addListener("playersUpdated", handlePlayersUpdated);
  }

  void handlePlayerJoined(data) {
    _players[data["id"]] = Player(data["sprite"]);
    _players[data["id"]].position = Vector2(data["x"], data["y"]);
    _players[data["id"]].label.text = data["id"].substring(0, 5);
    add(_players[data["id"]]);
  }

  void handlePlayerDisconnected(data) {
    remove(_players[data["id"]]);
    _players.remove(data["id"]);
  }

  void handlePlayersUpdated(data) {
    data.forEach((id, p) {
      _players[id].position = Vector2(p["x"], p["y"]);
      _players[id].isMovingLeft = p["isMovingLeft"];
      _players[id].isMovingRight = p["isMovingRight"];
      _players[id].isMovingUp = p["isMovingUp"];
      _players[id].isMovingDown = p["isMovingDown"];
      _players[id].direction = Direction.values
          .firstWhere((element) => element.toString() == p["direction"]);

      children.changePriority(_players[id], p["y"].round());
    });
  }

  void handleInitializePlayers(data) {
    data.forEach((id, p) {
      Player player = Player(p["sprite"]);
      player.label.text = id.substring(0, 5);
      player.position = Vector2(p["x"], p["y"]);
      player.direction = Direction.values
          .firstWhere((element) => element.toString() == p["direction"]);
      _players[data[id]["id"]] = player;
      add(_players[data[id]["id"]]);
    });
  }

  @override
  KeyEventResult onKeyEvent(
    RawKeyEvent event,
    Set<LogicalKeyboardKey> keysPressed,
  ) {
    final isKeyDown = event is RawKeyDownEvent;

    if (event.logicalKey == LogicalKeyboardKey.keyA) {
      _rpgServer.sendMessage("moveLeft", {
        "direction": Direction.left.toString(),
        "isMoving": isKeyDown,
      });
    } else if (event.logicalKey == LogicalKeyboardKey.keyD) {
      _rpgServer.sendMessage("moveRight", {
        "direction": Direction.right.toString(),
        "isMoving": isKeyDown,
      });
    } else if (event.logicalKey == LogicalKeyboardKey.keyW) {
      _rpgServer.sendMessage("moveUp", {
        "direction": Direction.up.toString(),
        "isMoving": isKeyDown,
      });
    } else if (event.logicalKey == LogicalKeyboardKey.keyS) {
      _rpgServer.sendMessage("moveDown", {
        "direction": Direction.down.toString(),
        "isMoving": isKeyDown,
      });
    }

    if (!_musicPlaying) {
      FlameAudio.bgm.play("field_theme_1.wav");
      _musicPlaying = true;
    }

    return super.onKeyEvent(event, keysPressed);
  }
}
