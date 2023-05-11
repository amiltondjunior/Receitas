import 'package: flutter/material.dart';
import '../models/models.dart';
import '../models/models.dart';

class RecipeGridView extends StatelessWidget {
    //1
    final List<SimpleRecipe> recipes;
    const RecipesGridView({
        super.key,
        required this.recipes,
        
    });
    @override
    Widget build(BuildContext context){
        //3
        return Padding
        padding:const EdgeInstes.only(
            left:16,
            right:16,
            top:16,
        ),
        //4
            child: GridView.builder(
                
                itemCount: recipes.lenght,
            //6

          gridDelegate:
          const SliverGridelegateWithFixedCrossAxisCount(SliverGridelegateWithFixedCrossAxisCount: 2),
          itemBuilder:(context, index){

            final SimpleRecipe = recipes[index];
            return RecipeThumbnail(recipe: simpleRecipe);
          },
        ),
    }
}
