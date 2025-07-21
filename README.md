# basic-rails-app

Ruby on Rails を使ったアプリ開発の元となるリポジトリ

## 概要

このアプリケーションは Ruby on Rails 8.0.2 を使用して作成された、データベースから "Hello, World!" メッセージを取得して画面に表示するシンプルなWebアプリケーションです。

## 主な機能

- データベースから "Hello, World!" メッセージを取得
- データベース接続エラー時は "Error" を表示
- シンプルで拡張しやすい設計

## 技術仕様

- **Ruby バージョン**: 3.2.3
- **Rails バージョン**: 8.0.2
- **データベース**: SQLite3
- **アプリケーションバージョン**: 0.1.0

## セットアップ

```bash
# 依存関係のインストール
bundle install

# データベースの作成とマイグレーション
bundle exec rails db:create
bundle exec rails db:migrate

# シードデータの投入
bundle exec rails db:seed

# サーバーの起動
bundle exec rails server
```

## 使用方法

1. アプリケーションを起動
2. ブラウザで `http://localhost:3000` にアクセス
3. "Hello, World!" メッセージが表示されることを確認

## ファイル構成

- `app/models/message.rb` - メッセージモデル
- `app/controllers/home_controller.rb` - ホームコントローラー（エラーハンドリング含む）
- `app/views/home/index.html.erb` - 表示画面
- `config/routes.rb` - ルーティング設定
- `db/seeds.rb` - 初期データ設定

## データベース設計

### messages テーブル
| カラム名 | 型 | 説明 |
|---------|----|----|
| id | integer | 主キー |
| content | string | メッセージ内容 |
| created_at | datetime | 作成日時 |
| updated_at | datetime | 更新日時 |

## エラーハンドリング

- データベース接続エラー
- レコードが見つからない場合
- 予期しないエラー

上記の場合、画面に "Error" と表示されます。

## テスト

```bash
# テストの実行
bundle exec rails test
```

## バージョン管理

このプロジェクトはセマンティックバージョニングに従います：
- v0.1.0: 初期リリース（Hello, World! 機能実装）

## ライセンス

このプロジェクトはMITライセンスの下で公開されています。
