import 'package:socket_io_client/socket_io_client.dart';

class RpgServer {
  late final Socket socket;

  void initialize() {
    socket = io('https://apollokit.com/');
  }

  void addListener(String event, dynamic Function(dynamic) callback) {
    socket.on(event, callback);
  }

  void sendMessage(String tag, dynamic json) {
    if (socket.connected) {
      socket.emit(tag, json);
    }
  }
}
