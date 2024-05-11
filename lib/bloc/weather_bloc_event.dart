part of 'weather_bloc_bloc.dart';

sealed class WeatherBlocEvent extends Equatable {
  const WeatherBlocEvent();

  @override
  List<Object> get props => [];
}

class FetchWeatherData extends WeatherBlocEvent {
  final Position position;

  const FetchWeatherData(this.position);

  @override
  List<Object> get props => [position];
}
