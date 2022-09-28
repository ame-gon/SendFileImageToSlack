#!/bin/sh

#
# スクリプトの実行方法
# sh SendFileImage.sh <設定ファイルへのパス> <アップロードする画像ファイルへのパス>
# ※ cron で動作させる時には SendFileImage.sh へのパスを含めすべて絶対パスにしてください。
#

# 設定ファイルの読み込み
source $1

# アップロードするファイル
filepath=$2

curl -F "file=@${filepath}" -F channels="${CHANNEL}" -H "Authorization: Bearer ${SLACK_API_TOKEN}" https://slack.com/api/files.upload

