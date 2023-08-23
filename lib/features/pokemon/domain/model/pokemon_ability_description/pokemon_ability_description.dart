import 'package:aib_test/features/pokemon/domain/model/pokemon_ability_description_effect_entries/pokemon_ability_description_effect_entries.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_ability_description.freezed.dart';
part 'pokemon_ability_description.g.dart';

@freezed
class PokemonAbilityDescription with _$PokemonAbilityDescription {
  const factory PokemonAbilityDescription({
    String? name,
    @JsonKey(name: 'effect_entries')
    List<PokemonAbilityEffectEntries?>? pokemonAbilityDescriptionEffectEntries,
    String? url,
  }) = _PokemonAbilityDescription;

  factory PokemonAbilityDescription.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityDescriptionFromJson(json);
}
