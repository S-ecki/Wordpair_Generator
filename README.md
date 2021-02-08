# WordPair_Generator

My first native App created using Flutter. It mainly follows the instructions from [this](https://flutter.dev/docs/get-started/codelab) Google Developers Codelab with a few additional twists. The files are full of comments, which should enhance my learning experience _(and perhaps help somebody else starting out with Flutter)._  
 
## Functionality 
<img src="https://user-images.githubusercontent.com/75510543/107295121-0a339980-6a6f-11eb-94be-3d1f32b1b243.png" width=250 align="right">
<img src="https://user-images.githubusercontent.com/75510543/107295244-46ff9080-6a6f-11eb-9483-ee5f45f0f743.png" width=250 align="right">

You can find the main files in `/lib`.

WordPair_Generator consists of a Main Page with a scollable _ListView_ of randomly generated pairs of the 5000 most used english words (pulled from [here](https://pub.dev/packages/english_words)). The list is infinitely long and lazily loades  10 WordPairs at a time.

Additionally, you can save and unsave your favourite words my clicking an heart-icon. Your favourite words can be viewed on a seperate page.

## What I´ve learned 
* Development setup in VSCode
* Syntax and semantic of Dart + loading packages with _pub_
* General structure of a Flutter Application
* The absolute beauty of the [Flutter Docs](https://flutter.dev/docs)
* The 5000 most used english words ;)
