# 技術投稿アプリMiniTech
技術記事投稿サービスを Ruby on Rails で実装する学習用プロジェクトです。  
Railsの基本概念と実践的なWebアプリケーション開発力の習得を目的とします。

## 主な機能

### 認証（Devise）
- 新規登録 / ログイン / ログアウト
- パスワード変更 / リセット（必要なら）

### 記事
- 記事投稿（CRUD）
- 下書き / 公開
- タグ付け
- Markdown対応（プレビューおよびレンダリング表示）

### いいね
- 記事へのいいね / いいね解除
- いいね数表示
- 自分がいいねした記事一覧

### コメント
- 記事へのコメント投稿 / 削除
- コメント数表示

### そのほか
- 記事検索（タイトル/本文）
- ページネーション
- ランキング（いいね順）
- 管理者機能

## 技術スタック
- Ruby
- Ruby on Rails
- MySQL
- Devise（認証）
- Markdownレンダリング（CommonMarker または Redcarpet を想定）
- Tailwind CSS（導入予定）
- Docker / Docker Compose
- デプロイ(検討中)
    - 案１：Render＋ Aiven(PaaS構成)
        - Render
            - 無料枠
                - 月750時間のインスタンス時間
                - 15 分アクセスないとスリープ
                - https://render.com/docs/free
        - Aiven
            - 1 CPU / 1 GB RAM / 1 GB ディスク
            - https://aiven.io/docs/platform/concepts/service-pricing
    - 案２：サーバー  + k3s or k8s

## 開発における制約
- Ruby / Ruby on Railsの理解を深めるため、AI エージェント CLIによる自動コーディングは禁止
- コード / ドキュメント参照・公式ドキュメントの読み込みは許可
- コピー&ペーストは極力避ける
- テストコードの整備
- ログや通知、テストでN+1問題を検出可能にする仕組み(検討中)
- 必ずISSUEを作成してから、そのISSUEに対応するPRを作成すること
- PRは手書きで書くこと(ghコマンド禁止)
