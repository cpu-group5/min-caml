# えるがつくったこんぱいら
使い方のメモがてら勝手にREADME.mdを追加しました。
間違いがあったら言ってください。

## ビルド
1. クローン
```
git clone https://github.com/cpu-group5/min-caml
cd min-caml
```

2. 自分のアーキテクチャ用にリンクを貼る
```
./to_my
```

3. makeする("both define a module named Lexer"みたいなwarning出るけど気にしなくて良い…？)
```
make min-cmal
```

## 使い方
- min-camlがコンパイラ。ファイル名を引数に渡す。
    例：
    ```
    ./min-caml fib.s
    ```
- min-caml.topがインタープリタ
