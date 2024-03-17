import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Data/MusicRepository.dart';
import '../MusicEvent.dart';
import '../MusicState.dart';

class RockBloc extends Bloc<MusicEvent, MusicStates> {
  final MusicRepository _musicRepository;


  RockBloc(this._musicRepository) : super(MusicLoadingState()) {
    on<LoadMusicEvent>((event, emit) async {
      emit(MusicLoadingState());

      try {
        final rock = await _musicRepository.getRock();
        emit(RockLoadedState(rock: rock));
      } catch (e) {
        emit(MusicError(error: e.toString()));
      }
    });
  }
}