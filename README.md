# アプリケーションの概要
作った料理を記録して共有できる、料理投稿SNSサービス。<https://cookmenu-v1.herokuapp.com/>


# 技術的ポイント
・**RSpec**でModel, Request, Systemテスト記述  
・**Ajax**を用いた非同期処理（フォロー/未フォロー、お気に入り登録/未登録などの切り替え表示）  
・**Rubocop**を使用したコード規約に沿った開発  
・**9つのモデル**をそれぞれ関連付けて使用  
・**Bootstrap**によるレスポンシブ対応  


# アプリケーションの機能
・作った料理を投稿  
・画像を正方形に整形して投稿（CarrierWaveを使用）  
・料理ログ登録（料理を作る度にログを追加し、これまでにいつ作ったか、何回作ったかが一目でわかる）  
・別ユーザーの料理に対して「食べたい！」リクエストを送信
・フォロー  
・お気に入り登録  
・コメント  
・通知（お気に入り登録 or コメントがあった場合）  
・ログイン  
・ログイン状態の保持  
・モデルに対するバリデーション  
・Ransackを使用した検索  


# 今後追加したい機能 
・CSV出力  
・ランキング機能  


# 環境
・Ruby 2.5.7  
・Rails 5.2.3  
・jQuery  
・Ajax  
・HTML  
・CSS  
・AWS  
・PostgreSQL  

