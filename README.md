![bandicam 2021-09-21 09-37-07-295](https://user-images.githubusercontent.com/81542430/134095399-73f51553-13ed-4a15-957a-d3da7c4aadde.jpg) 

# [We'Blog!](http://52.194.254.79/)  
日々の小さな出来事の投稿ができるWebアプリケーションです。  
メールアドレスからアカウントを登録して頂くことで  
他の方の投稿の閲覧、コメント、いいねなどができます。

##  使用言語や環境
OS：Linux(CentOS)  
言語：HTML,CSS,JavaScript,Ruby,MySQL  
フレームワーク：Ruby on Rails  
JS ライブラリ：jQuery  
IDE：Cloud9  

## 取り組み
・RDS(MySQL)を使用  
・一覧表示、登録、削除機能の実装  
・コピペを極力避け、分からない部分は自分なりに調べて学習  
・動作は冒頭のリンクから可能(※ローカル環境でも可)  
・ユーザー利用の増加を想定、投稿一覧のページングやユーザーアイコンの設定、メールアドレスの正規表現を実装  
・今後の修正を考え、インデント揃えやコメントアウト、部分テンプレートなどを利用

## セットアップ例
```
/home/ec2-user/environment $ git clone git@github.com:Midori-Gift/tL_issue.git  

/home/ec2-user/environment/tL_issue $ rails db:migrate  

※必要であればサンプル投稿の投入
/home/ec2-user/environment/tL_issue　$ rails db:seed

```
## 

## 利用させて頂いたサービスやサイト
[Rubular](https://rubular.com/)  
[Bootstrap5 CheatSheet](https://bootstrap-cheatsheet.themeselection.com/index.html)  
[Neumorphism.io](https://neumorphism.io/#4482c5)  


## 反省や躓いた部分  
#### 反省  
・ローカル環境でRDSを動かす方法が分かっていない、学び直す必要あり。  

#### 躓いた点  
・踏み台サーバー(EC2)からMySQLに接続できず  
→RDSにIPアドレス許可をしていないかったので反応が無いのは当たり前  

・MySQLにmigrationファイルで設定していないはずのカラムでUnknow column '~'のエラー  
→本番環境でマイグレートしたものが残留している、現行のマイグレーションと矛盾してしまうので  
こういった場合は一度pumaの再起動をしてから再度マイグレートを行う。





