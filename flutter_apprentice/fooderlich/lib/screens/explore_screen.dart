import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatefulWidget {
  ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final mockService = MockFooderlichService();

  // 1. Define a ScrollController instance
  late ScrollController _scrollController;

  @override
  void initState() {

    super.initState();
    // 2. Initialize the ScrollController and add a listener to it
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    // 3. Dispose the ScrollController when the widget is disposed
    _scrollController.dispose();
    super.dispose();
  }

  // 4. Define the scroll listener function
  void _scrollListener() {
    if (_scrollController.offset >= _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      // 5. Handle the end of the scroll
      print('Reached the end of the scroll!');
    } else if(_scrollController.offset <= _scrollController.position.minScrollExtent &&
    !_scrollController.position.outOfRange){
      print("You are at the top now");
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: mockService.getExploreData(),
        builder: (content, AsyncSnapshot<ExploreData> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Get the data and store in the recipes property as a list
            final recipes = snapshot.data?.todayRecipes ?? [];
            return ListView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              children: [
                TodayRecipeListView(
                  recipes: recipes,
                ),
                const SizedBox(height: 16,),
                FriendPostListView(friendPosts: snapshot.data?.friendPosts ?? []),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
