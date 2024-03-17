
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

class ClassicScreen extends StatelessWidget {
  const ClassicScreen({super.key, required this.repository});

  final MusicRepository repository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MusicBloc>(
          create: (context) => MusicBloc(repository)..add(LoadMusicEvent()),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Classic Music"),
        ),
        body: blocBody(),
      ),
    );
  }

  Widget blocBody() {
    return BlocProvider(
      create: (context) => BlocProvider.of<MusicBloc>(context)..add(LoadMusicEvent()),
      child: BlocConsumer<MusicBloc, MusicStates>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is MusicLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is ClassicLoadedState) {
              return ListView.builder(
                  itemCount: state.classic.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 9),
                      child: Card(
                        child: ListTile(
                          title: Text(
                            state.classic[index].trackname,
                            style: const TextStyle(color: Colors.blue),
                          ),
                          subtitle: Text(
                            state.classic[index].country,
                            style: const TextStyle(
                                color: Colors.black),
                          ),
                          leading: Text(
                            state.classic[index].artistname,
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