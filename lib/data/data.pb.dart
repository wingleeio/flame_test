///
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'data.pbenum.dart';

export 'data.pbenum.dart';

class Movement extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Movement', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'up')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'down')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'left')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'right')
    ..hasRequiredFields = false
  ;

  Movement._() : super();
  factory Movement({
    $core.bool? up,
    $core.bool? down,
    $core.bool? left,
    $core.bool? right,
  }) {
    final _result = create();
    if (up != null) {
      _result.up = up;
    }
    if (down != null) {
      _result.down = down;
    }
    if (left != null) {
      _result.left = left;
    }
    if (right != null) {
      _result.right = right;
    }
    return _result;
  }
  factory Movement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Movement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Movement clone() => Movement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Movement copyWith(void Function(Movement) updates) => super.copyWith((message) => updates(message as Movement)) as Movement; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Movement create() => Movement._();
  Movement createEmptyInstance() => create();
  static $pb.PbList<Movement> createRepeated() => $pb.PbList<Movement>();
  @$core.pragma('dart2js:noInline')
  static Movement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Movement>(create);
  static Movement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get up => $_getBF(0);
  @$pb.TagNumber(1)
  set up($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUp() => $_has(0);
  @$pb.TagNumber(1)
  void clearUp() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get down => $_getBF(1);
  @$pb.TagNumber(2)
  set down($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDown() => $_has(1);
  @$pb.TagNumber(2)
  void clearDown() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get left => $_getBF(2);
  @$pb.TagNumber(3)
  set left($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLeft() => $_has(2);
  @$pb.TagNumber(3)
  void clearLeft() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get right => $_getBF(3);
  @$pb.TagNumber(4)
  set right($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRight() => $_has(3);
  @$pb.TagNumber(4)
  void clearRight() => clearField(4);
}

class MovementInput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MovementInput', createEmptyInstance: create)
    ..e<Direction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction', $pb.PbFieldType.OE, defaultOrMaker: Direction.UP, valueOf: Direction.valueOf, enumValues: Direction.values)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isMoving', protoName: 'isMoving')
    ..hasRequiredFields = false
  ;

  MovementInput._() : super();
  factory MovementInput({
    Direction? direction,
    $core.bool? isMoving,
  }) {
    final _result = create();
    if (direction != null) {
      _result.direction = direction;
    }
    if (isMoving != null) {
      _result.isMoving = isMoving;
    }
    return _result;
  }
  factory MovementInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MovementInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MovementInput clone() => MovementInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MovementInput copyWith(void Function(MovementInput) updates) => super.copyWith((message) => updates(message as MovementInput)) as MovementInput; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MovementInput create() => MovementInput._();
  MovementInput createEmptyInstance() => create();
  static $pb.PbList<MovementInput> createRepeated() => $pb.PbList<MovementInput>();
  @$core.pragma('dart2js:noInline')
  static MovementInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MovementInput>(create);
  static MovementInput? _defaultInstance;

  @$pb.TagNumber(1)
  Direction get direction => $_getN(0);
  @$pb.TagNumber(1)
  set direction(Direction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDirection() => $_has(0);
  @$pb.TagNumber(1)
  void clearDirection() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isMoving => $_getBF(1);
  @$pb.TagNumber(2)
  set isMoving($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsMoving() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsMoving() => clearField(2);
}

class Player extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Player', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'y', $pb.PbFieldType.OD)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sprite', $pb.PbFieldType.O3)
    ..e<Direction>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction', $pb.PbFieldType.OE, defaultOrMaker: Direction.UP, valueOf: Direction.valueOf, enumValues: Direction.values)
    ..aOM<Movement>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'movement', subBuilder: Movement.create)
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'speed', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Player._() : super();
  factory Player({
    $core.int? id,
    $core.String? name,
    $core.double? x,
    $core.double? y,
    $core.int? sprite,
    Direction? direction,
    Movement? movement,
    $core.double? speed,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (x != null) {
      _result.x = x;
    }
    if (y != null) {
      _result.y = y;
    }
    if (sprite != null) {
      _result.sprite = sprite;
    }
    if (direction != null) {
      _result.direction = direction;
    }
    if (movement != null) {
      _result.movement = movement;
    }
    if (speed != null) {
      _result.speed = speed;
    }
    return _result;
  }
  factory Player.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Player.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Player clone() => Player()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Player copyWith(void Function(Player) updates) => super.copyWith((message) => updates(message as Player)) as Player; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Player create() => Player._();
  Player createEmptyInstance() => create();
  static $pb.PbList<Player> createRepeated() => $pb.PbList<Player>();
  @$core.pragma('dart2js:noInline')
  static Player getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Player>(create);
  static Player? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get x => $_getN(2);
  @$pb.TagNumber(3)
  set x($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasX() => $_has(2);
  @$pb.TagNumber(3)
  void clearX() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get y => $_getN(3);
  @$pb.TagNumber(4)
  set y($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasY() => $_has(3);
  @$pb.TagNumber(4)
  void clearY() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get sprite => $_getIZ(4);
  @$pb.TagNumber(5)
  set sprite($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSprite() => $_has(4);
  @$pb.TagNumber(5)
  void clearSprite() => clearField(5);

  @$pb.TagNumber(6)
  Direction get direction => $_getN(5);
  @$pb.TagNumber(6)
  set direction(Direction v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasDirection() => $_has(5);
  @$pb.TagNumber(6)
  void clearDirection() => clearField(6);

  @$pb.TagNumber(7)
  Movement get movement => $_getN(6);
  @$pb.TagNumber(7)
  set movement(Movement v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasMovement() => $_has(6);
  @$pb.TagNumber(7)
  void clearMovement() => clearField(7);
  @$pb.TagNumber(7)
  Movement ensureMovement() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.double get speed => $_getN(7);
  @$pb.TagNumber(8)
  set speed($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSpeed() => $_has(7);
  @$pb.TagNumber(8)
  void clearSpeed() => clearField(8);
}

class PlayersState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PlayersState', createEmptyInstance: create)
    ..m<$core.int, Player>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'players', entryClassName: 'PlayersState.PlayersEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: Player.create)
    ..hasRequiredFields = false
  ;

  PlayersState._() : super();
  factory PlayersState({
    $core.Map<$core.int, Player>? players,
  }) {
    final _result = create();
    if (players != null) {
      _result.players.addAll(players);
    }
    return _result;
  }
  factory PlayersState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayersState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayersState clone() => PlayersState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayersState copyWith(void Function(PlayersState) updates) => super.copyWith((message) => updates(message as PlayersState)) as PlayersState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PlayersState create() => PlayersState._();
  PlayersState createEmptyInstance() => create();
  static $pb.PbList<PlayersState> createRepeated() => $pb.PbList<PlayersState>();
  @$core.pragma('dart2js:noInline')
  static PlayersState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayersState>(create);
  static PlayersState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, Player> get players => $_getMap(0);
}

enum ClientPacket_Data {
  movementInput, 
  notSet
}

class ClientPacket extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ClientPacket_Data> _ClientPacket_DataByTag = {
    3 : ClientPacket_Data.movementInput,
    0 : ClientPacket_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClientPacket', createEmptyInstance: create)
    ..oo(0, [3])
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time')
    ..e<ClientPacketType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ClientPacketType.MOVEMENT_INPUT, valueOf: ClientPacketType.valueOf, enumValues: ClientPacketType.values)
    ..aOM<MovementInput>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'movementInput', protoName: 'movementInput', subBuilder: MovementInput.create)
    ..hasRequiredFields = false
  ;

  ClientPacket._() : super();
  factory ClientPacket({
    $fixnum.Int64? time,
    ClientPacketType? type,
    MovementInput? movementInput,
  }) {
    final _result = create();
    if (time != null) {
      _result.time = time;
    }
    if (type != null) {
      _result.type = type;
    }
    if (movementInput != null) {
      _result.movementInput = movementInput;
    }
    return _result;
  }
  factory ClientPacket.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientPacket.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientPacket clone() => ClientPacket()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientPacket copyWith(void Function(ClientPacket) updates) => super.copyWith((message) => updates(message as ClientPacket)) as ClientPacket; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClientPacket create() => ClientPacket._();
  ClientPacket createEmptyInstance() => create();
  static $pb.PbList<ClientPacket> createRepeated() => $pb.PbList<ClientPacket>();
  @$core.pragma('dart2js:noInline')
  static ClientPacket getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientPacket>(create);
  static ClientPacket? _defaultInstance;

  ClientPacket_Data whichData() => _ClientPacket_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get time => $_getI64(0);
  @$pb.TagNumber(1)
  set time($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearTime() => clearField(1);

  @$pb.TagNumber(2)
  ClientPacketType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(ClientPacketType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  MovementInput get movementInput => $_getN(2);
  @$pb.TagNumber(3)
  set movementInput(MovementInput v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMovementInput() => $_has(2);
  @$pb.TagNumber(3)
  void clearMovementInput() => clearField(3);
  @$pb.TagNumber(3)
  MovementInput ensureMovementInput() => $_ensure(2);
}

enum ServerPacket_Data {
  players, 
  id, 
  notSet
}

class ServerPacket extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ServerPacket_Data> _ServerPacket_DataByTag = {
    3 : ServerPacket_Data.players,
    4 : ServerPacket_Data.id,
    0 : ServerPacket_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServerPacket', createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time')
    ..e<ServerPacketType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ServerPacketType.PLAYERS, valueOf: ServerPacketType.valueOf, enumValues: ServerPacketType.values)
    ..aOM<PlayersState>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'players', subBuilder: PlayersState.create)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ServerPacket._() : super();
  factory ServerPacket({
    $fixnum.Int64? time,
    ServerPacketType? type,
    PlayersState? players,
    $core.int? id,
  }) {
    final _result = create();
    if (time != null) {
      _result.time = time;
    }
    if (type != null) {
      _result.type = type;
    }
    if (players != null) {
      _result.players = players;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory ServerPacket.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerPacket.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerPacket clone() => ServerPacket()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerPacket copyWith(void Function(ServerPacket) updates) => super.copyWith((message) => updates(message as ServerPacket)) as ServerPacket; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServerPacket create() => ServerPacket._();
  ServerPacket createEmptyInstance() => create();
  static $pb.PbList<ServerPacket> createRepeated() => $pb.PbList<ServerPacket>();
  @$core.pragma('dart2js:noInline')
  static ServerPacket getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerPacket>(create);
  static ServerPacket? _defaultInstance;

  ServerPacket_Data whichData() => _ServerPacket_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get time => $_getI64(0);
  @$pb.TagNumber(1)
  set time($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearTime() => clearField(1);

  @$pb.TagNumber(2)
  ServerPacketType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(ServerPacketType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  PlayersState get players => $_getN(2);
  @$pb.TagNumber(3)
  set players(PlayersState v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlayers() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlayers() => clearField(3);
  @$pb.TagNumber(3)
  PlayersState ensurePlayers() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get id => $_getIZ(3);
  @$pb.TagNumber(4)
  set id($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasId() => $_has(3);
  @$pb.TagNumber(4)
  void clearId() => clearField(4);
}

