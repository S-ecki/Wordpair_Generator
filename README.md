# WordPair_Generator

 My first native App created using Flutter. It mainly follows the instructions from [this](https://flutter.dev/docs/get-started/codelab) Google Developers Codelab with a few additional twists. The files are full of comments, which should enhance my learning experience _(and perhaps help somebody else starting out with Flutter)._  
 
## Functionality 
You can find the main files in `/lib`. <br>
WordPair_Generator consists of a Main Page with a scollable _ListView_ of randomly generated pairs of the 5000 most used english words (pulled from [here](https://pub.dev/packages/english_words)). The list is infinitely long and lazily loades  10 WordPairs at a time. <br>
Additionally, you can save and unsave your favourite words my clicking an heart-icon. Your favourite words can be viewed on a seperate page.

## What I´ve learned 
* Development setup in VSCode
* Syntax and semantic of Dart + loading packages with _pub_
* General structure of a Flutter Application
* The absolute beauty of the [Flutter Docs](https://flutter.dev/docs)
* The 5000 most used english words ;)
