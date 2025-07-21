class HomeController < ApplicationController
  def index
    begin
      # データベースから "Hello, World!" メッセージを取得
      @message = Message.find_by(content: "Hello, World!")
      @display_text = @message&.content || "Error"
    rescue => e
      # データベース接続エラーや予期しないエラーの場合
      Rails.logger.error "データベースエラー: #{e.message}"
      @display_text = "Error"
    end
  end
end
