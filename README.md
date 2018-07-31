# これは何か

iPhoneにプレインストールされてるアプリ Health Kit のエクスポートされたデータXMLをパースして血糖値(HKQuantityTypeIdentifierBloodGlucose)だけ取り出して一覧にする。

エクスポートするのは手動。ファイルが2つエクスポートされるが、日本語ファイル名（ローカライズされたファイル名なのだと思われる）のほう。

# 使い方

``` shell
$ bundle install --path vendor/bundle
$ bundle exec ruby main.rb <path of 書き出したデータ.xml> <Query of XPATH (option)>
```

# 参考にしたもの

[AppleHealthCareデータをNokogiriでパースする - hatappi.blog](https://blog.hatappi.me/entry/2017/04/26/213000)

[iPhoneで管理してる体重(ヘルスケア)データをMacで管理する方法　XMLをCSVに変換するのがポイント｜SKEGLOG](https://blog.skeg.jp/archives/2017/03/iphone-weight-data.html)

[Xpathまとめコマンドとその使用例・チートシートでカンタンに実験する - それマグで！](http://takuya-1st.hatenablog.jp/entry/2015/07/30/004448)

[HKQuantityTypeIdentifierBloodGlucose - HealthKit | Apple Developer Documentation](https://developer.apple.com/documentation/healthkit/hkquantitytypeidentifierbloodglucose?language=objc)
