# 画像を Slack に送信するスクリプト

## 本スクリプトの動作
- 指定した画像ファイルを Slack の指定したチャンネルに送信する

## 事前準備
- Slack で設定をしておく (検索するといくらか先人の方々の設定がでてくるので、今は割愛します。)
    - アプリの作成
    - Token を生成、取得
    - チャンネルに bot の追加
- conf.ini.org を conf.ini にリネームする
- conf.ini の内容を実環境にあわせて修正する

## 使用方法
コマンドの実行は以下の感じで

```
sh SendFileImage.sh <設定ファイルへのパス> <アップロードする画像ファイルへのパス>
```

### 注意事項
cron で動作させる時には SendFileImage.sh へのパスを含めパスはすべて絶対パスにしてください。

## 動作確認OS
- CentOS Linux release 7.5.1804 (Core)
