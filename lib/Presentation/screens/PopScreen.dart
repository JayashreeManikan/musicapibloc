
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/cupertino.dart';

import '../../Data/MusicRepository.dart';
import '../../Domain/Blocs/MusicBloc.dart';
import '../../Domain/Blocs/PopBloc.dart';
import '../../Domain/Blocs/RockBloc.dart';
import '../../Domain/MusicEvent.dart';
import '../../Domain/MusicState.dart';

class PopScreen extends StatelessWidget {
  const PopScreen({super.key, required this.repository});

  final MusicRepository repository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PopBloc>(
          create: (context) => PopBloc(repository)..add(LoadMusicEvent()),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Pop Music"),
        ),
        body: blocBody(),
      ),
    );
  }

  Widget blocBody() {
    return BlocProvider(
      create: (context) => BlocProvider.of<PopBloc>(context)..add(LoadMusicEvent()),
      child: BlocConsumer<PopBloc, MusicStates>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is MusicLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is PopLoadedState) {
              return ListView.builder(
                  itemCount: state.pop.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 9),
                      child: Card(
                        child: ListTile(
                          title: Text(
                            state.pop[index].trackname,
                            style: const TextStyle(color: Colors.blue),
                          ),
                          subtitle: Text(
                            state.pop[index].country,
                            style: const TextStyle(
                                color: Colors.black),
                          ),
                          leading: Text(
                            state.pop[index].artistname,
                            style: const TextStyle(
                                color: Colors.black),
                          ),
                        ),
                      ),
                    );

                  }
              );

            }

            if (state is MusicError) {
              return  Center(
                child: Text(state.error),
              );
            }
            return Container();
          }),
    );
  }
}