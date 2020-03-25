import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class BlocBloc extends Bloc<BlocEvent, BlocState> {
  @override
  BlocState get initialState => BlocInitial();

  @override
  Stream<BlocState> mapEventToState(
    BlocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
