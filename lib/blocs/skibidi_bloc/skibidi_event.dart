part of 'skibidi_bloc.dart';

@freezed
class SkibidiEvent with _$SkibidiEvent {
  const factory SkibidiEvent.started() = Started;
  const factory SkibidiEvent.sendPicForRoast(File image) = SendPicForRoast;
}