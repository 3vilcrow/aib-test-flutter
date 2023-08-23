import 'package:aib_test/features/pokemon/data/dto/get_ability/get_ability.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon_ability_description/pokemon_ability_description.dart';
import 'package:aib_test/features/pokemon/domain/repository/pokemons_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aib_test/core/utils/enums/status.dart';

import 'package:aib_test/features/pokemon/presentation/pokemon_details/cubit/pokemon_details_state.dart';

class PokemonDetailsCubit extends Cubit<PokemonDetailsState> {
  PokemonDetailsCubit({
    required PokemonsRepository pokemonsRepository,
    required Pokemon? pokemon,
  })  : _pokemon = pokemon,
        _pokemonsRepository = pokemonsRepository,
        abilitySelected = pokemon?.abilities?.first?.ability,
        super(const PokemonDetailsState());

  final Pokemon? _pokemon;
  final PokemonsRepository _pokemonsRepository;
  PokemonAbilityDescription? abilitySelected;

  Future<void> initiaize() async {
    if (_pokemon == null ||
        abilitySelected == null ||
        abilitySelected?.url == null) {
      emit(
        state.copyWith(
          status: Status.error,
          pokemon: _pokemon,
          abilitySelected: abilitySelected,
        ),
      );
    } else {
      GetAbilityRequestDTO abilityRequest = GetAbilityRequestDTO(
        url: abilitySelected!.url!,
      );
      final eitherPokemon =
          await _pokemonsRepository.getAbility(abilityRequest);

      eitherPokemon.fold((failureGetAbility) {
        return emit(
          state.copyWith(
            status: Status.error,
          ),
        );
      }, (ability) async {
        if (ability == null) {
          emit(
            state.copyWith(
              status: Status.error,
            ),
          );
        } else {
          abilitySelected = abilitySelected?.copyWith(
            pokemonAbilityDescriptionEffectEntries:
                ability.pokemonAbilityDescriptionEffectEntries,
          );
        }
      });
      emit(
        state.copyWith(
          status: Status.success,
          pokemon: _pokemon,
          abilitySelected: abilitySelected,
        ),
      );
    }
  }

  Future<void> changeSelectedAbility(
    PokemonAbilityDescription? newAbility,
  ) async {
    abilitySelected = newAbility;
    GetAbilityRequestDTO abilityRequest = GetAbilityRequestDTO(
      url: abilitySelected!.url!,
    );
    final eitherPokemon = await _pokemonsRepository.getAbility(abilityRequest);

    eitherPokemon.fold((failureGetAbility) {
      return emit(
        state.copyWith(
          status: Status.error,
        ),
      );
    }, (ability) async {
      if (ability == null) {
        emit(
          state.copyWith(
            status: Status.error,
          ),
        );
      } else {
        abilitySelected = abilitySelected?.copyWith(
          pokemonAbilityDescriptionEffectEntries:
              ability.pokemonAbilityDescriptionEffectEntries,
        );
      }
    });
    emit(
      state.copyWith(
        status: Status.success,
        pokemon: _pokemon,
        abilitySelected: abilitySelected,
      ),
    );
  }
}
