# Born2beRoot

### 概要
  * VirtualBoxVMを使用し、Debian(Linux)をセットアップする課題
  
### 使用環境
  * VirtualBoxVM
  * Debian(Linux)
  
### 設定内容
  * userのパスワードポリシー設定
    * common-passwordファイル
    * login.defsファイル

  * sudo権限の設定
    * visudoファイル
  
  * ufwの設定
    * ポート4242のみ設定

  * sshの設定
    * ポート4242で接続できるよう設定

  * cronの設定
    * 10分間隔で、monitoring.shが動作するよう設定

  * シェルファイルの作成
    * monitoring.shファイル

  * ユーザー作成
  
  * グループ作成、追加

  * hostnameの変更

### 設定画面
#### ホスト名の確認
<img width="864" alt="image" src="https://user-images.githubusercontent.com/80208699/224316092-41cbbff9-ffbd-4a2d-8a88-1cef788a1255.png">

#### ufw（Uncomplicated Firewall）の状態確認
<img width="1438" alt="スクリーンショット 2023-04-11 21 42 53" src="https://user-images.githubusercontent.com/80208699/231165733-ca6a86da-b7fd-4410-9925-6bb57806e86f.png">

#### sshの状態確認
<img width="1671" alt="ssh" src="https://user-images.githubusercontent.com/80208699/231166036-a32b03d6-9537-4b10-a322-29f148b279ac.png">

#### sshのポート設定確認
<img width="1458" alt="sshのポート設定" src="https://user-images.githubusercontent.com/80208699/231166267-c621dd5a-99a7-4a9f-aa9b-bf5a70006ee0.png">

#### 10分間隔で実行されるシェルファイルの実行結果
<img width="1693" alt="shellの実行結果" src="https://user-images.githubusercontent.com/80208699/231166450-13e7f503-bc7f-4d0e-8c0a-bde9dd690e2e.png">

