import 'package:aib_test/core/utils/enums/status.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/pages/arguments/pokemon_details_page_args.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/cubit/pokemon_details_cubit.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/cubit/pokemon_details_state.dart';
import 'package:get/get.dart';

class PokemonDetails extends StatelessWidget {
  const PokemonDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final arg = Get.arguments is PokemonDetailsPageArgs
        ? Get.arguments as PokemonDetailsPageArgs
        : null;
    final Pokemon? pokemon = arg?.pokemon;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Detail'),
        leading: IconButton(
          splashRadius: 20,
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => PokemonDetailsCubit(
          pokemon: pokemon,
        )..initiaize(),
        child: const PokemonDetailsContent(),
      ),
    );
  }
}

class PokemonDetailsContent extends StatelessWidget {
  const PokemonDetailsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailsCubit, PokemonDetailsState>(
      builder: (context, state) {
        if (state.status.isSuccess) {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              Text(
                'Nombre: ${state.pokemon?.name ?? "N/A"}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('ID: ${state.pokemon?.id ?? "N/A"}'),
              Image.network(
                state.pokemon?.sprites?.backDefault ?? '',
                width: 150,
              ),
            ],
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
