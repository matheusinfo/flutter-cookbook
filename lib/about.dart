import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            'Aplicativo desenvolvido apenas para fins educacionais e de aprendizagem, todo material utilizado está referenciado abaixo e não foi utilizado para fins comerciais.',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
              color: Colors.black,
              letterSpacing: 2.0,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        const Text(
          'desenvolvido por @matheusinfo e @humigod',
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic,
            color: Colors.black,
            letterSpacing: 2.0,
          ),
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
        const Divider(thickness: 0.4),
        ListTile(
          leading: const Icon(Icons.code),
          title: const Text(
            'Código disponível no GitHub',
            style: TextStyle(fontSize: 14),
          ),
          onTap: () => url_launcher.launchUrl(Uri.parse('https://github.com/matheusinfo/flutter_cookbook')),
        ),
        ExpansionTile(
          title: const Text(
            'Referências utilizadas',
            style: TextStyle(fontSize: 14),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          children: <Widget>[
            ListTile(
              title: const Text(
                'Flutter Material - Documentação',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () => url_launcher.launchUrl(Uri.parse('https://docs.flutter.dev/development/ui/widgets/material')),
            ),
            ListTile(
              title: const Text(
                'Flutter docs - Documentação',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () => url_launcher.launchUrl(Uri.parse('https://docs.flutter.dev/')),
            ),
            ListTile(
              title: const Text(
                'Alura - Como configurar seu ambiente Flutter',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () => url_launcher.launchUrl(
                  Uri.parse('https://www.alura.com.br/artigos/flutter-como-configurar-o-ambiente-de-desenvolvimento')),
            ),
            ListTile(
              title: const Text(
                'Pubdev - Bibliotecas para Flutter',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () => url_launcher.launchUrl(
                  Uri.parse('https://www.alura.com.br/artigos/flutter-como-configurar-o-ambiente-de-desenvolvimento')),
            ),
            ListTile(
              title: const Text(
                'Flutter Catalog - Aplicativo principal',
                style: TextStyle(fontSize: 14),
              ),
              onTap: () => url_launcher.launchUrl(
                  Uri.parse('https://play.google.com/store/apps/details?id=io.github.x_wei.flutter_catalog')),
            ),
          ],
        ),
      ],
    );
  }
}
