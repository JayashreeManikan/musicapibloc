
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Data/MusicRepository.dart';
import '../MusicEvent.dart';
import '../MusicState.dart';

class MusicBloc extends Bloc<MusicEvent, MusicStates> {
  final MusicRepository _musicRepository;


  MusicBloc( this._musicRepository) : super(MusicLoadingState()) {
    on<LoadMusicEvent>((event, emit) async {
      emit(MusicLoadingState());

      try {
        final classic = await _musicRepository.getClassic();
        emit(ClassicLoadedState(classic: classic));
      } catch (e) {
        emit(MusicError(error: e.toString()));
      }
    });
  }

  // MusicBloc(this._musicRepository) : super(MusicLoadingState()) {
  //   on<LoadMusicEvent>(fetchClassiclist);
   // on<LoadMusicEvent>(fetchRocklist);
    //on<LoadMusicEvent>(fetchPoplist);
  // }
  //
  // Future<void> fetchClassiclist(LoadMusicEvent event, Emitter<MusicStates> emit) async {
  //   emit(MusicLoadingState());
  //   try {
  //     final classic = await _musicRepository.getClassic();
  //     emit(ClassicLoadedState(classic:classic));
  //   } catch (e) {
  //     emit(MusicError(error:'Failed to load'));
  //   }
  // }
  // Future<void> fetchRocklist(LoadMusicEvent event, Emitter<MusicStates> emit) async {
  //   emit(MusicLoadingState());
  //   try {
  //     final rock = await _musicRepository.getRock();
  //     emit(RockLoadedState(rock: rock));
  //   } catch (e) {
  //     emit(MusicError(error:'Failed to load'));
  //   }
  // }
  // Future<void> fetchPoplist(LoadMusicEvent event, Emitter<MusicStates> emit) async {
  //   emit(MusicLoadingState());
  //   try {
  //     final pop = await _musicRepository.getPop();
  //     emit(PopLoadedState(pop:pop));
  //   } catch (e) {
  //     emit(MusicError(error:'Failed to load'));
  //   }
  // }


  }