part of 'home_cubit.dart';

class HomeState {
  final HomeSectionEnum activeMenu;

  HomeState({
    required this.activeMenu,
  });

  HomeState copyWith({
    HomeSectionEnum? activeMenu,
  }) {
    return HomeState(
      activeMenu: activeMenu ?? this.activeMenu,
    );
  }
}
