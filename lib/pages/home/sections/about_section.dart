import 'package:flutter/material.dart';
import 'package:ronip/ui/theme.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Container(
        color: RpTheme.backgroundColor,
        child: const Padding(
          padding: EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                'About',
                semanticsLabel: 'About',
                style: TextStyle(
                  color: RpTheme.witheColor,
                  fontSize: 42.0,
                ),
              ),
              SelectableText(
                'Atuo na área de desenvolvimento de software desde 2013 e sempre fui entusiasta da tecnologia híbrida voltada à dispositivos móveis.',
                semanticsLabel:
                    'Atuo na área de desenvolvimento de software desde 2013 e sempre fui entusiasta da tecnologia híbrida voltada à dispositivos móveis.',
                style: TextStyle(
                  color: RpTheme.witheColor,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              SelectableText(
                'Nesse período estive a frente de alguns projetos onde utilizei AngularJs e jQuery para gerar aplicativos com o PhoneGap e publiquei nas plataformas Google Play e App Store.',
                semanticsLabel:
                    'Nesse período estive a frente de alguns projetos onde utilizei AngularJs e jQuery para gerar aplicativos com o PhoneGap e publiquei nas plataformas Google Play e App Store.',
                style: TextStyle(
                  color: RpTheme.witheColor,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              SelectableText(
                'Ao longo do tempo foquei mais no desenvolvimento front-end onde atuei com Angular e React por alguns anos.',
                semanticsLabel:
                    'Ao longo do tempo foquei mais no desenvolvimento front-end onde atuei com Angular e React por alguns anos.',
                style: TextStyle(
                  color: RpTheme.witheColor,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              SelectableText(
                'No final de 2022 tive a oportunidade de voltar a atuar no desenvolvimento de aplicativos para Android e IOs, agora com o uso do Dart e Flutter e tenho me apaixonado cada vez mais por essas tecnologias.',
                semanticsLabel:
                    'No final de 2022 tive a oportunidade de voltar a atuar no desenvolvimento de aplicativos para Android e IOs, agora com o uso do Dart e Flutter e tenho me apaixonado cada vez mais por essas tecnologias.',
                style: TextStyle(
                  color: RpTheme.witheColor,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              SelectableText(
                'Hoje atuo na primeira equipe mobile da TOTVs - CMNet onde participo do desenvolvimento de bibliotecas e aplicativos.',
                semanticsLabel:
                    'Hoje atuo na primeira equipe mobile da TOTVs - CMNet onde participo do desenvolvimento de bibliotecas e aplicativos.',
                style: TextStyle(
                  color: RpTheme.witheColor,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
