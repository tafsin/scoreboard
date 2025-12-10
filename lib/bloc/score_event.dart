import 'package:equatable/equatable.dart';

abstract class ScoreEvent extends Equatable{
  @override
  List<Object?> get props => [];
}
 class LoadScore extends ScoreEvent{

 }
class IncrementTeamA extends ScoreEvent{

}
class IncrementTeamB extends ScoreEvent{

}
class DecrementTeamA extends ScoreEvent{

}
class DecrementTeamB extends ScoreEvent{

}

