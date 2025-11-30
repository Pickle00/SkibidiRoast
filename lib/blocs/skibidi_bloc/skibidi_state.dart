part of 'skibidi_bloc.dart';

@freezed
class SkibidiState with _$SkibidiState {
  const factory SkibidiState.initial() = Initial;
  const factory SkibidiState.skibidiCookingRoast() = SkibidiCookingRoast;
  const factory SkibidiState.skibidiRoastGenerated(String roast, File image) = SkibidiRoastGenerated;
  const factory SkibidiState.skibidiError(String error) = SkibidiError;
}
