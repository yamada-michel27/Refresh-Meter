#!/bin/bash
set -e

# Gemfileがなければ初期化
if [ ! -f "Gemfile" ]; then
    echo "Initializing Rails app..."
    rails new . --force --database=mysql
fi

# gem install
bundle install

# サーバー起動
exec "$@"
