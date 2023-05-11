import 'package:flutter/material.dart';
import '../models/models.dart';
import 'components.dart';

class FriendPostListView extends StatelessWidget {
    //1
    final List<Post> friendPosts;
    const friendPostListView({
        super.key,
        required this.friendPosts,
    });
    @override
    Widght build(BuildContext) {
        //2
        return padding(
            padding: const  EdgeInsets.only(
                left:16,
                right:16,
                top: 0,
            ),
            //3
            child: column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    //4
                    Text('Social Chefs !', style: Theme.of(context).textTheme.headline1),
                //5
                const SizedBox(height:16),
                // TODO: Adicione aqui o PostListView
                
                ListView.separeted(
                    //2
                    primary: false,
                    //3
                    physics: const NeverScrollableScrollPhysics(),
                    //4
                    shrinkWrap: true,
                    scrollDirection> Axis.vertical,
                    itemCount: friendPosts.legth,
                    itemBuilder: (context, index) {
                        //5
                        final post = friendPosts[index];
                        return FriendPostTile(post: post)
                         
                    },
                    separatorBuilder: (context, index){
                        
                    }
                )
                return const SizeBox(height: 16);
                //6
                const SizedBox(height: 16),
                ]
            )
        )
    }
}