import './appState.dart';
import './actions.dart';
import '../firebase.dart' as firebase;
import '../variables.dart' as variables;

AppState reducers(AppState prev,action) {
  switch(action) {
    case Actions.Login:
      print("in login");
      prev.auth = firebase.auth;
      prev.googleSignIn = firebase.googleSignIn;
      prev.user = firebase.user;
      print(prev.user);
      prev.loggedIn = true;
      return prev;
    break;
    case Actions.ChangeScreen:
      print("in change screen");
      prev.currentScreen = variables.screens[variables.index];
      return prev;
    break;
    case Actions.ExpandPanel:
      print("in expand panel");
      return prev;
    break;
    case Actions.Logout:
      print("in logout");
      prev.auth.signOut();
      prev.user = null;
      prev.googleSignIn = null;
      prev.auth = null;
      prev.loggedIn = false;
      return prev;
    break;
    case Actions.ChangeGender:
      print("in change gender");
      return prev;
    break;
    case Actions.DateOfBirth:
      print("in date of birth");
      return prev;
    break;
    case Actions.SelectSessions:
      print("in select sessions");
      return prev;
    break;
    default: return prev;
  }
}

