abstract class HomeScreenStates {}

class HomeScreenInitialState extends HomeScreenStates {}

class HomeScreenLoadingState extends HomeScreenStates {}

class HomeScreenSuccessState extends HomeScreenStates {}

class HomeScreenErrorState extends HomeScreenStates {
  final String error;

  HomeScreenErrorState(this.error);
}
