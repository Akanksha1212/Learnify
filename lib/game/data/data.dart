import 'package:learnify/game/models/TileModel.dart';

String selectedTile = "";
int selectedIndex;
bool selected = true;
int points = 0;

List<TileModel> myPairs = new List<TileModel>();
List<bool> clicked = new List<bool>();

List<bool> getClicked() {
  List<bool> yoClicked = new List<bool>();
  List<TileModel> myairs = new List<TileModel>();
  myairs = getPairs();
  for (int i = 0; i < myairs.length; i++) {
    yoClicked[i] = false;
  }

  return yoClicked;
}

List<TileModel> getPairs() {
  List<TileModel> pairs = new List<TileModel>();

  TileModel tileModel = new TileModel();

  //1
  tileModel.setImageAssetPath("assets/game/angry.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //2
  tileModel.setImageAssetPath("assets/game/bored.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //3
  tileModel.setImageAssetPath("assets/game/confused.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //4
  tileModel.setImageAssetPath("assets/game/happy.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();
  //5
  tileModel.setImageAssetPath("assets/game/sad.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //6
  tileModel.setImageAssetPath("assets/game/scared.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  // //7
  // tileModel.setImageAssetPath("assets/game/tired.png");
  // tileModel.setIsSelected(false);
  // pairs.add(tileModel);
  // pairs.add(tileModel);
  // tileModel = new TileModel();

  // //8
  // tileModel.setImageAssetPath("assets/game/worried.png");
  // tileModel.setIsSelected(false);
  // pairs.add(tileModel);
  // pairs.add(tileModel);
  // tileModel = new TileModel();

  return pairs;
}

List<TileModel> getQuestionPairs() {
  List<TileModel> pairs = new List<TileModel>();

  TileModel tileModel = new TileModel();

  //1
  tileModel.setImageAssetPath("assets/game/ques.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //2
  tileModel.setImageAssetPath("assets/game/ques.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //3
  tileModel.setImageAssetPath("assets/game/ques.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //4
  tileModel.setImageAssetPath("assets/game/ques.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();
  //5
  tileModel.setImageAssetPath("assets/game/ques.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //6
  tileModel.setImageAssetPath("assets/game/ques.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  // //7
  // tileModel.setImageAssetPath("assets/game/ques.png");
  // tileModel.setIsSelected(false);
  // pairs.add(tileModel);
  // pairs.add(tileModel);
  // tileModel = new TileModel();

  // //8
  // tileModel.setImageAssetPath("assets/game/ques.png");
  // tileModel.setIsSelected(false);
  // pairs.add(tileModel);
  // pairs.add(tileModel);
  // tileModel = new TileModel();

  return pairs;
}
