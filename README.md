# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version  
ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux]  
* Rails version   
Rails 7.0.3.1  
* yarn version  
1.22.19  
* npm version  
6.14.16  
* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* reference  
https://qiita.com/Shuhei_Nakada/items/b59964e56482ac911522  
↳about Environment  
https://blog.eq8.eu/til/how-to-use-bootstrap-5-in-rails-7.html  
↳install about bootstrap
* ...

* ToDo
・/costs/{id}におけるxlsxファイルの内訳の公開（リンク先はLOG内のFileColumnからリンクを飛ばす）
・costsページにおけるdashboardの非同期通信処理
　→月/週毎のトータル表示

・同時に複数DBへの接続が可能か調査
　→具体的には、costsfileがpostされた際に、別DB(costsfileの内訳を保存するDB)にアクセス可能か

・本番環境のやり方
　→DBの策定を行うべき。