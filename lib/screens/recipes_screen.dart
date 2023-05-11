import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';

class RecipesScreen extends StatelessWidget {
    //1
    final exploreService = MockFooderlichService();
    RecipesScreen({super.key});
    @override
    widght build(BuildContext context){
        //2
        return FutureBuilder(
            //3
            future: exploreService.getRecipes(),
            builder:(context, AsyncSnpashot<List<SImpleRecipe>snapshot)
            {
                //4
                if (snapshot.connectionState == ConnectionState.done)
                {
                    //todo adiciona aqui recipegridview
                    //5
                 return RecipesGridView(recipes: snapshot.data ?? []);
                } else {
                    //6
                    return const Center(child:
                    CircularProgressIndicator());
                }
            },
        );
    }
}