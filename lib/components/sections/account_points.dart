import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/components/topic_dot.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da Conta',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const BoxCard(
            boxContent: _AccountPointsContent(),
          ),
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({Key? key});

  @override
  Widget build(BuildContext context) {
    const EdgeInsets paddingPadrao = EdgeInsets.only(bottom: 16.0);
    const EdgeInsets paddingPequeno = EdgeInsets.only(bottom: 8.0);

    return Padding(
      padding: paddingPadrao,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text('Pontos totais:'),
          Padding(
            padding: paddingPadrao,
            child: Text(
              '3000',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const Padding(
            padding: paddingPequeno,
            child: ContentDivision(),
          ),
          Padding(
            padding: paddingPadrao,
            child: Text(
              'Objetivos:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          TopicDot(
            color: ThemeColors.pontuation['free points'],
            label: 'Entrega grátis: 15000pts',
          ),
          TopicDot(
            color: ThemeColors.pontuation['streaming'],
            label: '1 mês de streaming: 30000pts',
          ),
        ],
      ),
    );
  }

}
