import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_language_ability.freezed.dart';
part 'pokemon_language_ability.g.dart';

@freezed
class PokemonLanguageAbility with _$PokemonLanguageAbility {
  const factory PokemonLanguageAbility({
    String? name,
    String? url,
  }) = _PokemonLanguageAbility;

  factory PokemonLanguageAbility.fromJson(Map<String, dynamic> json) =>
      _$PokemonLanguageAbilityFromJson(json);
}
