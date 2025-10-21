import 'package:dio/dio.dart';
import 'package:ebtech_task/models/post_model.dart';
import 'package:ebtech_task/screens/home_screen/provider/states.dart';
import 'package:ebtech_task/shared/dio_helper/dio_helper.dart';
import 'package:flutter/foundation.dart';

class HomeScreenProvider extends ChangeNotifier {
  HomeScreenStates state = HomeScreenInitialState();
  List<PostModel> posts = [];

  getPosts() async {
    print('========================================');
    state = HomeScreenLoadingState();
    notifyListeners();

    try {
      var response = await DioHelper.getPosts();
      if (response.statusCode == 200) {
        posts.clear();
        debugPrint(response.data.toString());
        for (var post in response.data) {
          posts.add(PostModel.fromJson(post));
        }
        state = HomeScreenSuccessState();
      }
    } on DioException catch (e, h) {
      state = HomeScreenErrorState('Network error');
      debugPrint(e.toString());
      debugPrint(h.toString());
    } catch (e, h) {
      state = HomeScreenErrorState('unexpected error');
      debugPrint(e.toString());
      debugPrint(h.toString());
    }
    notifyListeners();
  }
}
