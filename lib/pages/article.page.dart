import 'package:android_design/widgets/app.bar.widget.dart';
import 'package:android_design/widgets/article.widget.dart';
import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: const DroidBar(
        title: 'Article',
      ),
      body: const SafeArea(
        child: DroidArticle(
          title: 'Exemplo de titulo',
          description:
              'Aqui nós temos o exemplo de um parágrafo: Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n\n',
        ),
      ),
    );
  }
}
