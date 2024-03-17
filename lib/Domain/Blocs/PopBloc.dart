
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Data/MusicRepository.dart';
import '../MusicEvent.dart';
import '../MusicState.dart';

class PopBloc extends Bloc<MusicEvent, MusicStates> {
  late final MusicRepository _musicRepository;


  PopBloc(this._musicRepository) : super(MusicLoadingState()) {
    on<LoadMusicEvent>((event, emit) async {
      emit(MusicLoadingState());

      try {
        final pop = await _musicRepository.getPop();
        emit(PopLoadedState(pop: pop));
      } catch (e) {
        emit(MusicError(error: e.toString()));
      }
    });
  }
  }