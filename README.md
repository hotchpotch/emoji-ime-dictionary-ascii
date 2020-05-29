# 🖊 絵文字を IME からアルファベットで入力するための辞書

## これは何？

Google IME などで絵文字をアルファベットからよしなに入力できるようにするための辞書です。

例えば `:BEE` と入力し TAB キーを押すと、以下のような感じで候補が表示され、入力できます。

![IME Image](https://cdn-ak.f.st-hatena.com/images/fotolife/s/secondlife/20200529/20200529184408.png)

大本の辞書ファイルは [emojilib](https://github.com/muan/emojilib) を使っています。

マッピングされる単語は [emoji_ascii_dict.txt](./emoji_ascii_dict.txt) を御覧ください。

## 利用方法

[emoji_ascii_dict.txt](./emoji_ascii_dict.txt) を raw でダウンロードした後に IME のインポート機能などで登録して利用できます。

また MS-IME の人は [emoji_ascii_dict_u16le.txt] で(たぶん)インポートできます。

## 謝辞

[emoji-ime-dictionary](https://github.com/peaceiris/emoji-ime-dictionary) の `:わらい` 等の prefix に `:` を使って IME から変換するアイディアを利用しています。
