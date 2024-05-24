import 'package:flutter/material.dart';
import 'package:untitled2/models/item.dart';
import '../components/phrase_item.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});

  final List<ItemModel> phrasesList = const [
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'Are you coming',
    ),
    ItemModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      enName: 'Yes i\'m coming',
      jpName: 'Hai watashi wa kite imasu',
    ),
    ItemModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      enName: 'Where are you going',
      jpName: 'Doko ni iku no',
    ),
    ItemModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      enName: 'How are you feeling',
      jpName: 'Go kibun wa ikagadesu ka.',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      enName: 'I love programming',
      jpName: 'Watashi wa puroguramingu ga ..',
    ),
    ItemModel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      enName: 'Programming is easy',
      jpName: 'Puroguramingu wa kantandesu',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      enName: 'I love anime',
      jpName: 'Watashi wa anime ga daisukidesu',
    ),
    ItemModel(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      enName: 'Don\'t forget to subscribe',
      jpName: 'Kōdoku suru koto o wasurenaide..',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            color: const Color(0xff50ADC7),
            item: phrasesList[index],
          );
        },
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemsList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemsList.add(
  //       ListItem(
  //         number: numbers[i],
  //       ),
  //     );
  //   }

  //   return itemsList;
  // }
}
