import 'package:flutter/cupertino.dart';
import 'package:retrofit_flutter_tryout/data/repository/data_repository.dart';
import 'package:retrofit_flutter_tryout/domain/business_logic.dart';
import 'package:retrofit_flutter_tryout/data/model/model.dart';

class ViewModel with ChangeNotifier, BusinessLogicOfSomeSort {
  ViewModel(this.repository);

  DataRepository repository;

  List<PostModel> postList = List.empty(growable: true);

  void getPost() {
    repository.getPosts().then((value) {
      if (!value.isSuccess) return;
      value.data?.forEach((post) {
        postList.add(post);
      });
      notifyListeners();
    });
  }
}
