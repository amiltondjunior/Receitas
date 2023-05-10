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
    {
//4
if (snapshot.connectionState == connectionState.done)
{
    //5

    final recipes = snapshot.data?.todayRecipes ?? [];
    // TODO: Substitua isso pelo TodayRecipeListView.
    return TodayRecipeListView(locais: locais);//
    return Center(
        child: Container(
            child: const Text('Show TodayRecipeListView'),
        ),
    );
} else {
    //6
    return const Center(
        child: CircularProfressIndicator(),
    );
}

    },
);

    // final mockService = MockFooderlichService();
    // ExploreScreen({super.key});
    // @override
    // Widget build(BuildCOntext context) {
    //     //2
    //     // TTODO: Adicione o FutureBuilder ao TOdayRecipeListView.
    //     return const Center(
    //         child: Text('Explore Screen');
   