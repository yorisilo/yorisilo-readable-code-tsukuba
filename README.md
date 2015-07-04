# readable-code 勉強会
[課題](https://github.com/clear-code/sezemi-2015/blob/master/readable-code-tsukuba/task.md)

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

### ユーザーに紐付いた`recipes.txt`の表示

ユーザー kou に紐付いた`recipes.txt`の表示

```sh
$ ruby recipe.sh kou recipes.txt
```


### ユーザーに紐付いた `recipes.txt` のidを指定してそれを表示する．

ユーザー kou に紐付いた`recipes.txt`のidを指定してそれを表示

```sh
$ ruby recipe.sh kou recipes.txt 1
```
