import 'package:ebtech_task/screens/home_screen/provider/home_screen_provider.dart';
import 'package:ebtech_task/screens/home_screen/provider/states.dart';
import 'package:ebtech_task/screens/post_screen/components/post_widget.dart';
import 'package:ebtech_task/shared/components/my_loading_indicator.dart';
import 'package:ebtech_task/shared/show_toast.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toastification/toastification.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenProvider()..getPosts(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(17),
          child: Consumer<HomeScreenProvider>(
            builder: (context, provider, child) {
              var state = provider.state;
              print(state);
              if (state is HomeScreenLoadingState) {
                return MyLoadingIndicator();
              }
              if(state is HomeScreenErrorState){
                  // showToast(context: context, text: provider.state.error, type: ToastificationType.error);
              }
              if (provider.state is HomeScreenSuccessState) {
                return ListView.separated(
                  itemBuilder: (context, idx) =>
                      PostWidget(postModel: provider.posts[idx]),
                  separatorBuilder: (context, idx) => SizedBox(height: 15),
                  itemCount: provider.posts.length,
                );
              }
              return Placeholder();
            },
          ),
        ),
      ),
    );
  }
}
