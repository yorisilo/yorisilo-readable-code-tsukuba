# recipe.rb の使い方


## `recipe-data.txt` に recipe を追加する
`recipe-data.txt` は

```
オムライス 卵を焼いてごはんにのせる
親子丼 鶏肉を焼いて卵でとじてごはんにのせる
杏仁豆腐 牛乳と砂糖をまぜてゼラチンで固める
```

みたいなフォーマットになっているので，それに合わせて追加してね
最後の行は改行を入れてくださいまし．

## `recipe-data.txt` の一覧表示

```ruby
ruby recipe.sh recipe-data.txt
```

## `recipe-data.txt` のidを指定してそれを表示する．
以下の例は id が 1 の recipe を表示する．

```ruby
ruby recipe.sh recipe-data.txt 1
```
