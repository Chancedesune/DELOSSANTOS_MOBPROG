import 'package:delossantos_mobprog/widget/newsfeed_card.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NewsfeedCard(
          userName: 'Ma. Jazmine A. Delos Santos',
          postContent: 'I love Anastasya Feodorovna Tsaritsa. #AnastasyaFeodorovnaTsaritsa4Life',
          date: '2 hours ago',
          numOfLikes: 10,
          hasImage: true,
          userImage: 'assets/images/jaz.png',
        ),
      ],
    );
  }
}