import 'package:aib_test/features/pokemon/data/dto/get_pokemon/get_pokemon.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aib_test/core/utils/constants/app_contants.dart';
import 'package:aib_test/core/utils/enums/status.dart';
import 'package:aib_test/features/pokemon/data/dto/get_pokemons_list/get_pokemons_list.dart';
import 'package:aib_test/features/pokemon/domain/repository/pokemons_repository.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_list/cubit/pokemon_list_state.dart';
import 'package:get/get.dart';

class PokemonListCubit extends Cubit<PokemonListState> {
  PokemonListCubit({
    required PokemonsRepository pokemonsRepository,
  })  : _pokemonsRepository = pokemonsRepository,
        super(const PokemonListState());

  final PokemonsRepository _pokemonsRepository;

  Future<void> fetchPokemons() async {
    if (state.hasReachedMax) return;
    if (state.status.isLoading) return;

    emit(
      state.copyWith(
        status: Status.loading,
      ),
    );

    if (state.status.isInitial) {
      GetPokemonsListRequestDTO pokemonsRequest = GetPokemonsListRequestDTO(
        offset: AppConstants.defaultPage,
        limit: AppConstants.defaultSize,
      );
      final eitherListPokemon =
          await _pokemonsRepository.getPokemonsList(pokemonsRequest);
      eitherListPokemon.fold(
        (failureGetListPokemon) {
          return emit(
            state.copyWith(
              status: Status.error,
            ),
          );
        },
        (responseListPokemon) async {
          for (var pokemon in responseListPokemon) {
            if (pokemon.url == null) {
              return emit(
                state.copyWith(
                  status: Status.error,
                ),
              );
            } else {
              GetPokemonRequestDTO pokemonRequest = GetPokemonRequestDTO(
                url: pokemon.url!,
              );
              final eitherPokemon =
                  await _pokemonsRepository.getPokemon(pokemonRequest);

              eitherPokemon.fold((failureGetPokemon) {
                return emit(
                  state.copyWith(
                    status: Status.error,
                  ),
                );
              }, (pokemon) async {
                if (pokemon == null) {
                  emit(
                    state.copyWith(
                      status: Status.error,
                    ),
                  );
                } else {
                  final indexPokemonInList = responseListPokemon
                      .indexWhere((p) => p.name == pokemon.name);
                  responseListPokemon.removeAt(indexPokemonInList);
                  responseListPokemon.insert(indexPokemonInList, pokemon);
                }
              });
            }
          }
          return emit(
            state.copyWith(
              status: Status.success,
              pokemonList: responseListPokemon,
              hasReachedMax: false,
            ),
          );
        },
      );
    }
    GetPokemonsListRequestDTO pokemonsRequest = GetPokemonsListRequestDTO(
      offset: state.pokemonList.length,
      limit: AppConstants.defaultSize,
    );
    final either = await _pokemonsRepository.getPokemonsList(pokemonsRequest);
    either.fold(
      (failure) {
        return emit(
          state.copyWith(
            status: Status.error,
          ),
        );
      },
      (response) async {
        List<Pokemon> listPokemon = List.from(response);
        if (listPokemon.isEmpty) {
          emit(state.copyWith(hasReachedMax: true));
        } else {
          for (var pokemon in listPokemon) {
            if (pokemon.url == null) {
              return emit(
                state.copyWith(
                  status: Status.error,
                ),
              );
            } else {
              GetPokemonRequestDTO pokemonRequest = GetPokemonRequestDTO(
                url: pokemon.url!,
              );
              final eitherPokemon =
                  await _pokemonsRepository.getPokemon(pokemonRequest);

              eitherPokemon.fold((failureGetPokemon) {
                return emit(
                  state.copyWith(
                    status: Status.error,
                  ),
                );
              }, (pokemon) async {
                if (pokemon == null) {
                  return emit(
                    state.copyWith(
                      status: Status.error,
                    ),
                  );
                } else {
                  final indexPokemonInList =
                      listPokemon.indexWhere((p) => p.name == pokemon.name);
                  listPokemon.removeAt(indexPokemonInList);
                  listPokemon.insert(indexPokemonInList, pokemon);
                }
              });
            }
          }

          return emit(
            state.copyWith(
              status: Status.success,
              pokemonList: List.of(state.pokemonList)..addAll(listPokemon),
              hasReachedMax: false,
            ),
          );
        }
      },
    );
  }
}
