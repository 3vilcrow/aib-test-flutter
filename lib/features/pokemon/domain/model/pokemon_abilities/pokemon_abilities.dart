import 'package:aib_test/features/pokemon/domain/model/pokemon_ability_description/pokemon_ability_description.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_abilities.freezed.dart';
part 'pokemon_abilities.g.dart';

@freezed
class PokemonAbilities with _$PokemonAbilities {
  const factory PokemonAbilities({
    PokemonAbilityDescription? ability,
  }) = _PokemonAbilities;

  factory PokemonAbilities.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilitiesFromJson(json);
}
