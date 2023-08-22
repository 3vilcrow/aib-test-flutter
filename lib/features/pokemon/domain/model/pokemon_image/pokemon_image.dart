import 'package:aib_test/features/pokemon/domain/model/pokemon_image_home/pokemon_image_home.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pokemon_image.freezed.dart';
part 'pokemon_image.g.dart';

@freezed
class PokemonImage with _$PokemonImage {
  const factory PokemonImage({
    @JsonKey(name: 'home') PokemonImageHome? pokemonImageHome,
  }) = _PokemonImage;

  factory PokemonImage.fromJson(Map<String, dynamic> json) =>
      _$PokemonImageFromJson(json);
}
