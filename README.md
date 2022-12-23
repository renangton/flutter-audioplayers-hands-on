# 概要

FlutterでAudioPlayers（音を出すためのパッケージ）を利用したアプリを作成するためのガイドプロジェクトです。
このプロジェクトでは音源にmp3ファイルまたはバイナリデータを使用します。

# 前提条件

- Flutterをインストールしていること
  - Windows環境構築手順
    - <https://blog.css-net.co.jp/entry/2022/05/30/133942>
  - Mac環境構築手順
    - <https://docs.flutter.dev/get-started/install/macos>
    - <https://zenn.dev/kboy/books/ca6a9c93fd23f3/viewer/5232dc>
- Android Studioをインストールしていること
- GitHubアカウントを持っていること

# ハンズオンをすすめるにあたって

このハンズオンをすすめるにあたってPull Requestの作成およびレビューを求める箇所があります。 ただ、ご自身のみで進めても問題ございませんので必要がないと判断されれば特にPull Requestの作成やレビュー依頼はせず進めてもらって結構です。

# 準備

まずはこのハンズオンのリポジトリをforkしてください。 forkできましたら、ご自身のローカルPCにcloneしてエディタでプロジェクトを開いてください。  
参考: <https://docs.github.com/ja/get-started/quickstart/fork-a-repo>

# 追加するパッケージについて

- audioplayers
  - <https://pub.dev/packages/audioplayers>

`pubspec.yaml`のdependenciesに下記を記述

```yaml
dependencies:
  audioplayers: ^0.20.1
```

下記コマンドをターミナルで実行  
※すでに実行済みのため、clone後にご自身のローカルリポジトリで実行する必要はありません  
`$ flutter pub get`  

# ビルド資材にmp3ファイルをセットして音声を再生する場合

1. プロジェクト直下に`assets`フォルダを作成し、音声ファイルを入れる
    - `assets`フォルダ配下に音声ファイル以外入れる可能性があるため、今回は`sounds`フォルダを作成し、その中にmp3ファイルを入れています

2. `pubspec.yaml`のflutterに下記を記述  

```yaml
flutter:
  assets:
    - assets/sounds/
```

3. 以下の内容を実装

```dart
final AudioCache _player = AudioCache();
_player.play("sounds/[ファイル名]");
```

# バイナリデータで音声を再生する場合

mp3ファイルを変換したバイナリデータを使用しています。  

1. 以下の内容を実装  

```dart
final AudioCache _player = AudioCache();
// バイナリデータを8ビットのリストに変換
final unit8Audio = base64Decode("[バイナリデータ]");
_player.playBytes(unit8Audio);
```

# 起動手順

1. Android Studioでエミュレータを作成
    - <https://blog.css-net.co.jp/entry/2022/06/06/112045>
2. デバイスを選択し、起動
3. エミュレータで実行
    - <https://developer.android.com/training/basics/firstapp/running-app?hl=ja#Emulator>

# ボタンをタップすると音声が再生されるページを作成してみましょう

`view/HandsOn.dart`ファイルを使用してください。

1. mp3ファイルを`assets/sounds`に入れてください。

2. ボタンを作成しましょう
    - ボタンの形状やタイプ、配置、個数に指定はありません。自由に作成してみてください。  
参考: <https://qiita.com/coka__01/items/30716f42e4a909334c9f>  
参考: <https://flutterawesome.com/tag/button/>

3. mp3ファイルの再生処理を実装してみましょう。

- 参考箇所  
<https://github.com/renangton/flutter-audioplayers-hands-on/blob/a5f63d5779f5ab034f96eb485defac897a084905/lib/view/Youtube.dart#L16-L20>  
<https://github.com/renangton/flutter-audioplayers-hands-on/blob/a5f63d5779f5ab034f96eb485defac897a084905/lib/view/Youtube.dart#L52-L53>

完成したらPull Requestを作成してください。
