import 'package:aib_test/features/pokemon/domain/model/pokemon_image/pokemon_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sprites.freezed.dart';
part 'sprites.g.dart';

@freezed
class Sprites with _$Sprites {
  const factory Sprites({
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'back_shiny') String? backShiny,
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'other') PokemonImage? image,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}
