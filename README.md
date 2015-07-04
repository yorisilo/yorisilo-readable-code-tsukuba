# readable-code 勉強会
[課題](https://github.com/clear-code/sezemi-2015/blob/master/readable-code-tsukuba/task.md)

## recipe.rb の使い方

### `recipes.txt` に recipe を追加する
各`recipes(1..4).txt` は

```
オムライス 卵を焼いてごはんにのせる
親子丼 鶏肉を焼いて卵でとじてごはんにのせる
杏仁豆腐 牛乳と砂糖をまぜてゼラチンで固める
```

みたいなフォーマットになっているので，それに合わせて追加してね．
最後の行は改行を入れてくださいまし．

### 四人の各ユーザーに紐付いたレシピの表示


```sh
$ ruby recipe.rb kou recipes1.txt piyo recipes2.txt okkez recipes3.txt kou recipes4.txt
```

### 四人の各ユーザーに紐付いたレシピのidを指定してそれを表示する．

四人の各ユーザーに紐付いたレシピのid 3 を表示する．

```sh
$ ruby recipe.rb kou recipes1.txt piyo recipes2.txt okkez recipes3.txt kou recipes4.txt 3
```
