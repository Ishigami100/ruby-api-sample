# ベースイメージとして公式のRubyイメージを使用
FROM ruby:3.2.2

# アプリケーションディレクトリを作成
WORKDIR /app

# GemfileとGemfile.lockをコピー（必要に応じて）
COPY Gemfile  ./

# 必要なgemをインストール
RUN bundle install

# アプリケーションコードをコピー
COPY . .

CMD ["ruby", "api_call.rb"]