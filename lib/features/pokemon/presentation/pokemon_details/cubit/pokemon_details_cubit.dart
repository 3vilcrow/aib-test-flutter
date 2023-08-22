import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aib_test/core/utils/enums/status.dart';

import 'package:aib_test/features/pokemon/presentation/pokemon_details/cubit/pokemon_details_state.dart';

class PokemonDetailsCubit extends Cubit<PokemonDetailsState> {
  PokemonDetailsCubit({
    required Pokemon? pokemon,
  })  : _pokemon = pokemon,
        super(const PokemonDetailsState());

  final Pokemon? _pokemon;

  void initiaize() {
    if (_pokemon == null) {
      emit(
        state.copyWith(
          status: Status.error,
          pokemon: _pokemon,
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: Status.success,
          pokemon: _pokemon,
        ),
      );
    }
  }
}
