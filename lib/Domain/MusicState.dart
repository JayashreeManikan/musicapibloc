
import 'package:equatable/equatable.dart';

import 'package:flutter/cupertino.dart';
import 'package:musicapibloc/Data/model/classic_entity.dart';
import 'package:musicapibloc/Data/model/classiclist.dart';

import '../Data/model/pop_entity.dart';
import '../Data/model/poplist.dart';
import '../Data/model/rock_entity.dart';
import '../Data/model/rocklist.dart';

@immutable
abstract class MusicStates{}


class MusicLoadingState extends MusicStates {}

class ClassicLoadedState extends MusicStates {
    List<classiclist> classic;
ClassicLoadedState({required this.classic});
}


class RockLoadedState extends MusicStates {
   final List<rocklist> rock;
  RockLoadedState({required this.rock});
}

class PopLoadedState extends MusicStates {
    List<poplist> pop;
  PopLoadedState({required this.pop});
}

class MusicError extends MusicStates {
  final String error;
  MusicError({required this.error});
}