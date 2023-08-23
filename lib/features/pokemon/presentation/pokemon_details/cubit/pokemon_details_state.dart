import 'package:aib_test/core/utils/enums/status.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon_ability_description/pokemon_ability_description.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_details_state.freezed.dart';

@freezed
class PokemonDetailsState with _$PokemonDetailsState {
  const factory PokemonDetailsState({
    Pokemon? pokemon,
    PokemonAbilityDescription? abilitySelected,
    @Default(Status.initial) Status status,
  }) = _PokemonDetailsState;
}
