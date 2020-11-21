@echo off
rem -------------------------------------------------
rem ディレクトリ作成プログラム
rem 参考: 「現場のプロが教える前処理技術」Chapter4-2
rem Parameter:
rem 第1引数: project名
rem 実行例: make_ds_directory.bat <project名>
rem -------------------------------------------------

rem 文字コード utf-8をセット
chcp 65001 > nul

rem -------------------------
rem 引数からproject名取得
rem -------------------------
rem 引数指定が無い場合は、コマンドプロンプトを閉じる。
if "%1" == "" (
 echo "project名が設定されていません。"
 echo "コマンドプロンプトを閉じます。"
 timeout 10 
 exit
)

rem ----------------------------
rem フォルダ存在チェック
rem ----------------------------
if exist "%1" (
 echo "既に同じプロジェクト名のフォルダが存在しています"
 echo "コマンドプロンプトを閉じます。"
 timeout 10 
 exit
)

rem ----------------------------
rem フォルダ作成
rem ----------------------------
mkdir "%1"
rem srcディレクトリ作成
mkdir  "%1"\src
mkdir  "%1"\src\preparation
mkdir  "%1"\src\processing
mkdir  "%1"\src\modeling
rem testディレクトリ作成
mkdir  "%1"\test
rem modelディレクトリ作成
mkdir  "%1"\model
rem dataディレクトリ作成
mkdir  "%1"\data
mkdir  "%1"\data\raw
mkdir  "%1"\data\processed
rem notebookディレクトリ作成
mkdir  "%1"\notebook
mkdir  "%1"\notebook\eda
mkdir  "%1"\notebook\preproccessing
mkdir  "%1"\notebook\evaluation
mkdir  "%1"\notebook\submit

tree "%1"
