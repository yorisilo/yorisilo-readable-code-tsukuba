# readable-code 勉強会

## recipe.rb の使い方

### `recipes.txt` に recipe を追加する
`recipes.txt` は

```
オムライス 卵を焼いてごはんにのせる
親子丼 鶏肉を焼いて卵でとじてごはんにのせる
杏仁豆腐 牛乳と砂糖をまぜてゼラチンで固める
```

みたいなフォーマットになっているので，それに合わせて追加してね．
最後の行は改行を入れてくださいまし．

### `recipes.txt` の一覧表示

```sh
$ ruby recipe.sh recipes.txt
```


### `recipes.txt` のidを指定してそれを表示する．
以下の例は id が 1 の recipe を表示する．

```sh
$ ruby recipe.sh recipes.txt 1
```
