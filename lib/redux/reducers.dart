import './appState.dart';
import './actions.dart';

AppState reducers(AppState prev,action) {
  switch(action) {
    case Actions.Login: print("Login action");
  }
}