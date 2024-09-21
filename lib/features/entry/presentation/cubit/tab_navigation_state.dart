part of 'tab_navigation_cubit.dart';

sealed class TabNavigationState extends Equatable {
  const TabNavigationState(this.index);

  final int? index;

  @override
  List<Object?> get props => [index];
}

final class TabSelected extends TabNavigationState {
  const TabSelected(super.index);
}
