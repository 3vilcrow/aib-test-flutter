import 'package:freezed_annotation/freezed_annotation.dart';
part 'pokemon_image_home.freezed.dart';
part 'pokemon_image_home.g.dart';

@freezed
class PokemonImageHome with _$PokemonImageHome {
  const factory PokemonImageHome({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
  }) = _PokemonImageHome;

  factory PokemonImageHome.fromJson(Map<String, dynamic> json) =>
      _$PokemonImageHomeFromJson(json);
}
