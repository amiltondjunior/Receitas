import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/nodejs.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
    // 1
return FutureBuilder(
    //2
    future: mockService.getExploreData(),
    //3
    builder:(context, AsyncSnapshotExplorerData>snapshot)

//4
if (snapshot.connectionState == connectionState.done)
{
    //5
    return ListView(
        //6
    scrollDirection: Axis.vertical,
    children:[
        //7
        TodayRecipeListView(recipes:snapshot.data?.todayRecipes ?? []),
    //8
    const SizedBox(height: 16),
    //9
   FriendPostListView(friendPosts: snapshot.data?.friendPosts ?? []),
    ]
    final recipes = snapshot.data?.todayRecipes ?? [];
    // TODO: Substitua isso pelo TodayRecipeListView.
    Container(
        height: 400,
        color:colors.green,
    ),
    ],
    );
    } else {
        //10
        return const Center(child: CircularProgressIndicator());
    }
),
);
}

    // final mockService = MockFooderlichService();
    // ExploreScreen({super.key});
    // @override
    // Widget build(BuildCOntext context) {
    //     //2
    //     // TTODO: Adicione o FutureBuilder ao TOdayRecipeListView.
    //     return const Center(
    //         child: Text('Explore Screen');
   