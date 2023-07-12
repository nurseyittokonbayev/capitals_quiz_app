import 'package:capitals_app/components/custom_card.dart';
import 'package:capitals_app/constants/app_colors.dart';
import 'package:capitals_app/constants/app_text.dart';
import 'package:capitals_app/models/continents.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:capitals_app/pages/test_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.volume_up,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: AppColors.black,
            ),
          ),
        ],
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppText.appBarText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          const Divider(
            indent: 26,
            endIndent: 26,
            thickness: 2,
            color: AppColors.black,
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                final continent = continents[index];
                return CustomCard(
                  onTap: () {
                    if (continent.questions != null) {
                      player.play(
                        AssetSource('audio/${continent.audio}.mp3'),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TestPage(
                            questions: continent.questions!,
                          ),
                        ),
                      );
                    } else {
                      player.play(AssetSource('audio/sorry.mp3'));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(seconds: 1, milliseconds: 500),
                          content: Text(
                              'Извините, здесь пока нет вопросов, но мы скоро добавим!'),
                        ),
                      );
                    }
                  },
                  item: continent,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
