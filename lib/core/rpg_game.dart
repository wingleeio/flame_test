import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flame_test/data/data.pbserver.dart' as $d;
import 'package:flame_test/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../components/player.dart';

class RpgGame extends FlameGame with KeyboardEvents {
  late final WebSocketChannel channel;
  final Map _players = {};

  final List<$d.ServerPacket> packets = [];
  final List<int> disconnected = [];
  bool _musicPlaying = false;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    channel = WebSocketChannel.connect(
      Uri.parse('wss://apollokit.com/websocket'),
    );

    channel.stream.listen((data) {
      List<int> buffer = data.cast<int>();
      $d.ServerPacket packet = $d.ServerPacket.fromBuffer(buffer);

      switch (packet.type) {
        case $d.ServerPacketType.PLAYERS:
          packets.insert(packets.length, packet);
          break;
        case $d.ServerPacketType.PLAYER_DISCONNECTED:
          _players[packet.id].removeFromParent();
          _players.remove(packet.id);
          disconnected.add(packet.id);
          break;
        default:
          break;
      }
    });
  }

  @override
  void update(double dt) {
    super.update(dt);

    int time = DateTime.now().millisecondsSinceEpoch - interpolationOffset;

    if (packets.length > 1) {
      while (packets.length > 2 && time > packets[1].time.toInt()) {
        packets.removeAt(0);
      }

      double factor = (time.toDouble() - packets[0].time.toDouble()) /
          (packets[1].time.toDouble() - packets[0].time.toDouble());

      packets[1].players.players.forEach((id, player) {
        $d.Player? prev = packets[0].players.players[id];
        if (prev != null && _players.containsKey(player.id)) {
          Vector2 pos = Vector2(prev.x, prev.y);

          pos.lerp(Vector2(player.x, player.y), factor);
          _players[player.id].position = pos;
          _players[player.id].isMovingLeft = player.movement.left;
          _players[player.id].isMovingRight = player.movement.right;
          _players[player.id].isMovingUp = player.movement.up;
          _players[player.id].isMovingDown = player.movement.down;
          _players[player.id].direction = player.direction;
          children.changePriority(_players[id], player.y.round());
        } else {
          if (!_players.containsKey(player.id) &&
              !disconnected.contains(player.id)) {
            _players[player.id] = Player(sprites[player.sprite]);
            _players[player.id].position = Vector2(player.x, player.y);
            _players[player.id].label.text = player.id.toString();
            add(_players[player.id]);
          }
        }
      });
    }
  }

  void move(bool isKeyDown, $d.Direction direction) {
    $d.MovementInput input = $d.MovementInput(
      direction: direction,
      isMoving: isKeyDown,
    );

    $d.ClientPacket packet = $d.ClientPacket(
      movementInput: input,
      type: $d.ClientPacketType.MOVEMENT_INPUT,
    );

    channel.sink.add(packet.writeToBuffer());
  }

  @override
  KeyEventResult onKeyEvent(
    RawKeyEvent event,
    Set<LogicalKeyboardKey> keysPressed,
  ) {
    final isKeyDown = event is RawKeyDownEvent;

    if (event.logicalKey == LogicalKeyboardKey.keyA) {
      move(isKeyDown, $d.Direction.LEFT);
    } else if (event.logicalKey == LogicalKeyboardKey.keyD) {
      move(isKeyDown, $d.Direction.RIGHT);
    } else if (event.logicalKey == LogicalKeyboardKey.keyW) {
      move(isKeyDown, $d.Direction.UP);
    } else if (event.logicalKey == LogicalKeyboardKey.keyS) {
      move(isKeyDown, $d.Direction.DOWN);
    }

    // if (!_musicPlaying) {
    //   FlameAudio.bgm.play("field_theme_1.wav");
    //   _musicPlaying = true;
    // }

    return super.onKeyEvent(event, keysPressed);
  }
}
