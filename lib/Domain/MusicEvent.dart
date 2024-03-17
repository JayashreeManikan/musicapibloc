
import 'package:equatable/equatable.dart';

import 'package:flutter/cupertino.dart';

@immutable
abstract class MusicEvent extends Equatable {
  const MusicEvent();
}

class LoadMusicEvent extends MusicEvent {
  @override
  List<Object?> get props => [];
}



