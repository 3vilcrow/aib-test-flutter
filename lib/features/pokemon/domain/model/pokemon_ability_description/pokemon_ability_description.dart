import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_ability_description.freezed.dart';
part 'pokemon_ability_description.g.dart';

@freezed
class PokemonAbilityDescription with _$PokemonAbilityDescription {
  const factory PokemonAbilityDescription({
    String? name,
    String? url,
  }) = _PokemonAbilityDescription;

  factory PokemonAbilityDescription.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityDescriptionFromJson(json);
}
