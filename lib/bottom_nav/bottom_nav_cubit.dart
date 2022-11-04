import 'package:bloc/bloc.dart';
import 'nav_bar_items.dart';

part 'bottom_nav_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.index1, 0));
  //BlocProvider.of<NavigationCubit>(context).setNavBarItem(0);
  void setNavBarItem(int tab){
    switch (tab) {
      case 0:
        emit(NavigationState(NavbarItem.index1, 0));
        break;
      case 1:
        emit(NavigationState(NavbarItem.index2, 1));
        break;
      case 2:
        emit(NavigationState(NavbarItem.index3, 2));
        break;
      case 3:
        emit(NavigationState(NavbarItem.index4, 3));
        break;
      case 4:
        emit(NavigationState(NavbarItem.index5, 4));
        break;
      case 5:
        emit(NavigationState(NavbarItem.index6, 5));
        break;
    }
  }
  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.index1:
        emit(NavigationState(NavbarItem.index1, 0));
        break;
      case NavbarItem.index2:
        emit(NavigationState(NavbarItem.index2, 1));
        break;
      case NavbarItem.index3:
        emit(NavigationState(NavbarItem.index3, 2));
        break;
      case NavbarItem.index4:
        emit(NavigationState(NavbarItem.index4, 3));
        break;
      case NavbarItem.index5:
        emit(NavigationState(NavbarItem.index5, 4));
        break;
      case NavbarItem.index6:
        emit(NavigationState(NavbarItem.index6, 5));
        break;
    }
  }
}
