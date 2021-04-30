# htd localization

Package para simplificar tradução no app.

```dart
import 'package:localization/localization.dart';
```


## Configuração - Sem sistema de rotas

A configuração do package sem sistema de rotas é bem simples, basta colocar após o MaterialApp o seguinte código:
```dart
return MaterialApp(
  ...,
  home: LocalizationWidget(child: MyHomePage()),
);
```

Dessa forma, será carregado o arquivo de tradução no início da aplicação e seu conteúdo ficará em memória.


## Configuração - Com sistema de rotas

Quando a aplicação está utilizando o sistema de rotas do flutter, não é utilizada a propriedade `home` do `MaterialApp`.
Para resolver esse problema, utilize o método assíncrono estático `Localization.configuration()`.

**NOTA :** Esse método deve ser chamado antes de todas as chamadas de tradução. Geralmente, é executado na SplashScreen.

## Consumindo a tradução
Para facilitar o consumo da tradução, criamos uma extension de simples utilização:
```dart
"sua-key".i18n();
``` 

## Definindo um idioma manualmente
Por padrão, o idioma é selecionado pela configuração `Platform.localeName` do package `dart:io`. 
Para forçar um determinado idioma, basta utilizar o parâmetro `selectedLanguage`, dessa forma:
```dart
Localization.configuration(selectedLanguage: 'pt_BR');
```


**NOTA :** Nao esqueça de adicionar no Pubspec:

```yaml
flutter:

  assets:
   - assets/lang/

localization_dir: assets\lang #Pasta onde se encontram os Jsons

``` 


Se os arquivos de tradução não forem encontrados, será carregado o arquivo de traduções informado em `defaultLanguage` _(padrão `pt_BR.json`)_.

Para saber qual o idioma que o dispositivo está chamando, basta importar o `dart:io` dar um print de `Platform.localeName`, dessa forma:

**main.dart**
```dart
import 'dart:io';

void main(){
  print(Platform.localeName);
  runApp(MyApp());
}
```

## Parâmetros
Para enviar parâmetros para a tradução, utilize a chave `%s`, conforme o exemplo:

### No arquivo de tradução:
```json
{
  "birthday":"O aniversário de %s é no dia %s"
}
```

### No arquivo dart:
```dart
"birthday".i18n(["David Araujo", "07/03"]);
```


## Automação

Criamos uma automação que gera as chaves e suas traduções no [Slidy CLI](https://pub.dev/packages/slidy), basta utilizar o comando `slidy localization`