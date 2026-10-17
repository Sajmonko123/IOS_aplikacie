import '../models/quiz_question.dart';

const questions = [
  QuizQuestion('Aký je hlavný stavebný prvok UI vo Flutteri?', [
    'Widget',
    'Komponent',
    'Blok',
    'Modul',
  ]),
  QuizQuestion('Ktorý widget usporiada prvky pod seba?', [
    'Column',
    'Row',
    'Stack',
    'Center',
  ]),
  QuizQuestion('Čo spôsobí prekreslenie StatefulWidgetu?', [
    'setState()',
    'build()',
    'initState()',
    'dispose()',
  ]),
  QuizQuestion('Kde sa registrujú assety, napríklad obrázky?', [
    'pubspec.yaml',
    'main.dart',
    'AndroidManifest.xml',
    'README.md',
  ]),
  QuizQuestion('Čo vráti randomizer.nextInt(6)?', [
    'Celé číslo od 0 do 5',
    'Celé číslo od 1 do 6',
    'Celé číslo od 0 do 6',
    'Desatinné číslo od 0 do 6',
  ]),
  QuizQuestion('Ktorá premenná musí byť známa už pri kompilácii?', [
    'const',
    'final',
    'var',
    'dynamic',
  ]),
];
