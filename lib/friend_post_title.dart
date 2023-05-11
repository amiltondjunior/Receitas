import 'package: flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';

class FriendPostTile extends StatelessWidget{
    final Post post;
    const FriendPostTile({
        super.key,
        required this.post,
    });
    @override
    widght build(BuildContext context) {
        //1
        return Row(
            crossAxisAlignment: CrossAxisAlignment.start
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

//2
CirculeImage(
    imageProvider: AssetImage(post.profileImageUrl),
    imageRadius: 20,
),

//3
const SizedBox(widght: 16),
//4
Expanded(
    //5
)
child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        //6
        Text(post.comment),
        //7
        Text(
            '$(post.timestamp) mins ago',
            style: const TextStyle(fontWeight: Fontweight.w700),
        ),
    ],
),

],

 );
    }
}