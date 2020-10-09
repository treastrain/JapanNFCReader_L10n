# JapanNFCReader_L10n

iOS・watchOS App [Japan NFC Reader - カードリーダー](https://japannfcreader.tret.jp) のローカライズのために使用する [`Localizable.strings`](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/LoadingResources/Strings/Strings.html) の基となるレポジトリです。


## 現在作業中のブランチ
- [v2.0-develop](https://github.com/treastrain/JapanNFCReader_L10n/tree/v2.0-develop)


## ファイル形式
Strings のローカライズには `.jsonc` ファイルを使用します。


## 対応ローカライゼーション : `knownRegions`
- Japanese : `ja`
- English : `en`
- Chinese, Simplified : `zh-Hans`
- Chinese, Traditional : `zh-Hant`
- Chinese (Hong Kong) : `zh-HK`


## ローカライズの基準
ローカライズの基となる言語は日本語とします。各ローカライゼーションのために使用する `key` である `ja`、`en` などといった表記は、Apple Xcode の `project.pbxproj` の `knownRegions` で使用されている表記に合わせるものとし、これにのみ制約されます。この `key` やローカライズした文言に政治的意図等は一切含みません。

### `knownRegions` について
`knownRegions` は Xcode 12 以降で使用され、非推奨となっていないものを使用することとします。


## issue, pull request について
title や comment は日本語もしくは英語で記述してください。ただし、正確に意図を伝える目的などで、日本語ないし英語と併記する形で他の言語を用いることに制限はありません。

### issue について
次のような場合には issue を必ず作成してください。
- 新規対応言語の追加提案
- ローカライズにおける言い回しなどの変更提案
- 日本語の表現の変更提案
- README の変更提案


## ライセンス
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="クリエイティブ・コモンズ・ライセンス" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />この 作品 は <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">クリエイティブ・コモンズ 表示 - 継承 4.0 国際 ライセンス</a>の下に提供されています。


## 謝辞
このリポジトリを公開する前まで、[行者](https://github.com/w41k3rc0m)さんに英語、繁体字中国語、簡体字中国語の翻訳で多大なご協力を賜りました。この場にてお礼を申し上げます。
