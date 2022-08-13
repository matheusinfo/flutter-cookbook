import 'package:flutter/material.dart';

class Instalation extends StatelessWidget {
  const Instalation({super.key});

  @override
  Widget build(BuildContext context) {
     return Column(
      children: const <Widget>[
        ExpansionTile(
          title: Text('Windows'),
          subtitle: Text('instalação do flutter no Windows'),
          children: <Widget>[
            ListTile(title: Text('1 - O Flutter depende do Git para funcionar. Então, é necessário que o Git esteja instalado na máquina antes de instalarmos o Flutter. Para isso, basta baixar o cliente do Git para Windows da sua página oficial. A instalação é no estilo Avançar> Avançar> Concluir. Quando o download for concluído, basta clicar no instalador do Git para que o processo de instalação seja iniciado.')),
            ListTile(title: Text('2 - Baixe o arquivo zip da última versão do Flutter. Esse arquivo pode ser encontrado na página oficial do Flutter, dentro da seção “Get the Flutter SDK”. O nome do arquivo normalmente é flutter_windows_x.x.x-stable.zip, no qual as letras “x” são os números da versão mais atual disponível.')),
            ListTile(title: Text('3 - Extraia o arquivo zip com o Flutter SDK para uma pasta onde não sejam necessários privilégios de administrador. A documentação do Flutter recomenda que o SDK seja extraído para C:\flutter.')),
            ExpansionTile(
            title: Text('4 - Para utilizarmos o Flutter CLI (interface de linha de comandos) diretamente em qualquer linha de comando, os seguintes passos são necessários:'),
            children: <Widget>[
              ListTile(title: Text('4.1 - Vá em Painel de Controle > Contas de usuário > Alterar as variáveis do meu ambiente.')),
              ListTile(title: Text('4.2 - Na seção de variáveis de ambiente de usuário, procure a variável chamada “Path”.')),
              ListTile(title: Text('4.3 - Adicione à variável “Path” o caminho para a pasta C:/flutter/bin. Não se esqueça de separar a nova entrada das entradas pré-existentes com um ponto e vírgula (;).')),
              ListTile(title: Text('4.4 - Reinicie o Windows.')),
              ListTile(title: Text('4.5 - Abra uma instância do git bash ou cmd e digite o comando Flutter. O help do Flutter deve ser exibido.')),
            ],
          ),
            ListTile(title: Text('5 - E por último, mas não menos importante, execute em uma linha de comando do Windows o comando flutter doctor, para que ele dê o diagnóstico completo e informe se a instalação foi realizada corretamente. Caso ainda haja pendências, ele dirá quais são e como resolvê-las.')),
          ],
        ),
        ExpansionTile(
          title: Text('Linux'),
          subtitle: Text('instalação do flutter no Linux'),
          children: <Widget>[
            ListTile(title: Text('1 - O Flutter depende do Git para funcionar. Para isso, instale o Git através de seu gerenciador de pacotes por meio do comando apt-get install git-all.')),
            ListTile(title: Text('2 -Verifique se sua distribuição Linux é 64 bits. O Flutter só funciona em sistemas operacionais de 64 bits.')),
            ListTile(title: Text('3 - Baixe a última versão do Flutter SDK para Linux. O SDK pode ser baixado em sua página oficial na seção “Get the Flutter SDK”.')),
            ListTile(title: Text('4 - Extraia o Flutter para uma pasta que não exija elevação de privilégios. A documentação recomenda que o Flutter SDK seja extraído para uma pasta chamada “flutter” na raiz do seu usuário.')),
            ListTile(title: Text('5 - Adicione o Flutter às variáveis de ambiente com o comando export PATH=pwd/flutter/bin:PATH em uma instância do Terminal. Porém, este export funcionará apenas enquanto o terminal estiver aberto. Uma maneira de configurar definitivamente no path do Linux está no artigo Update your path da documentação do Flutter.')),
            ListTile(title: Text('6 - Rode o comando flutter no terminal. O help do Flutter CLI deve ser exibido. E por último, mas não menos importante, execute em uma linha de comandos do seu Linux o comando flutter doctor para que ele dê o diagnóstico completo se a instalação foi realizada corretamente. Caso ainda haja pendências, ele dirá quais são e como resolvê-las.')),
          ],
        ),
        ExpansionTile(
          title: Text('MacOs'),
          subtitle: Text('instalação do flutter no MacOs'),
          children: <Widget>[
            ListTile(title: Text('1 - O Flutter depende do Git para funcionar. Para isso, instale o Git através de seu gerenciador de pacotes (utilizaremos aqui o homebrew) por meio do comando brew install git.')),
            ListTile(title: Text('2 - Baixe a última versão do Flutter SDK para macOS. O SDK pode ser baixado em sua página oficial na seção “Get the Flutter SDK”.')),
            ListTile(title: Text('3 - Extraia o Flutter para uma pasta que não exige privilégios de administrador. A documentação recomenda que o Flutter SDK seja extraído para uma pasta chamada “flutter” na raíz do seu usuário.')),
            ListTile(title: Text('4 - Atualize o PATH da máquina para que este aponte para o Flutter SDK. Para isso, basta rodar o comando export PATH=pwd/flutter/bin:PATH em uma instância do Terminal. Este export funcionará apenas enquanto o terminal estiver aberto. Uma maneira de configurar definitivamente no path do macOS está no artigo Update your path da documentação do Flutter.')),
            ListTile(title: Text('5 - Rode o comando flutter no terminal. O help do Flutter CLI deve ser exibido. E por último, mas não menos importante, execute em uma linha de comandos do seu macOS o comando flutter doctor para que ele dê o diagnóstico completo se a instalação foi realizada corretamente. Caso ainda haja pendências ele dirá quais são e como resolvê-las.')),
          ],
        ),
      ],
    );
  }
}