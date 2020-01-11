import 'package:meta/meta.dart';

@immutable
abstract class ColorsEvent {}

class Start extends ColorsEvent {
  @override
  String toString() {
    return 'Start{}';
  }
}
