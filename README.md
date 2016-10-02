# 魁!!霜田塾

Shader Forge指南  
〜トゥーンシェーダーを作ろう！の巻〜

[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](http://c3.mit-license.org/2016/)

---

## 霜田 孝雄

![Github](./images/icon.jpg)

ﾜﾀｼﾊ ﾌﾟﾛｸﾞﾗﾐﾝｸﾞ ﾁｮｯﾄﾃﾞｷﾙ

Github: [c3-hoge-fuga-piyo](https://github.com/c3-hoge-fuga-piyo)

___

本ドキュメントは下記のいずれかの環境から、  
スライドとして閲覧することを前提としています

- [Slideck](https://slideck.io/)
- [reveal.js](https://github.com/hakimel/reveal.js/)
- [revealgo](https://github.com/yusukebe/revealgo/)

---

## はじめに

---

## 執筆時の環境

- Unity 5.4.1p3
- Shader Forge 1.28
- MacBook Air (11-inch, Mid 2013)
  - OS X 10.11.4
  - 1.7GHz Intel Core i7
  - 8GB 1600 MHz DDR3
  - Intel HD Graphics 5000 1536MB

---


## 本講義の目的

- トゥーンシェーダーの実装を通し、
  Shader Forgeによるシェーダーの実装方法を知る

---

## 受講者に求めるスキル

- Unityに対する「入門書レベル」の知識
  - 「基本的な知識」が必要です
- シェーダーに対する「初心者レベル」の知識
  - 「概要レベルの知識」が必要です

---

## 抑えておきたい基礎知識

---

### Diffuse

- 拡散光
- ライトの色に対する係数

---

### Ambient

- 環境光
- ライトの色に対する補正値

---

### Emissive

- 自己発光
  - 「発光」といってもライト扱いにはならない
- ライトの有無に関わらず追加される色

---

### Specular

- 鏡面反射
- ライトの入射角度と反射角度に応じて明るい色にする

---

### 法線マッピング

__法線マップ__ と呼ばれる特殊なテクスチャを用いて、  
3Dモデルに擬似的な凹凸を追加する技法

---

### Lambert シェーディング

光源の入射方向と面の法線だけで色が決定するシェーディング技法

- 大体この考え方でなんとかなる

---

## トゥーンシェーダーの仕組み

---

通常のライティングと異なり、光のあたり具合を
パターン化（めっちゃあたってる、まぁまぁあたってる、まったくあたってない等）し、
最終的な色を決定する

___

基本的には下記の2要素で成り立っている

- 光のあたり具合の算出
- パターンの取得

※実用レベル（競合との差をつける程度の意味）を考えると、
もっと色々な要素が必要になってきます

___

トゥーンシェーダーだとアウトラインを想像する方が
いらっしゃるかもしれませんが、そこは本質ではないので割愛します

---

### 光のあたり具合の算出

Lambert シェーディングを用いる

___

#### 具体的な手順

1. 光源方向ベクトルと面の法線ベクトルの内積を算出する
2. (1)で得た内積を正規化（0 to 1の範囲内に収めること）する

---

### パターンの取得

ランプテクスチャを用いる

___

#### 具体的な手順

1. UV座標系で(0, 0)が光源が面の真逆にあるとき、
  (1, 1)が光源と面が同じ方向を向いているときに乗算される色
  になるようなテクスチャを用意する
2. 算出された光のあたり具合をテクスチャUVとして(1)で用意された
  テクスチャから色を取り出す

---

## さいごに

- Lambert シェーディングが
  シェーダーによるライティングの基礎
- Standard Assets等、コードで記述されたシェーダーを
  移植する（完全には無理）と良い練習になる

___

## あわせて読みたい

- [Unity道場11 Shader Forge 101 ～ShaderForgeをつかって学ぶシェーダー入門～　基本操作とよく使われるノード編](http://www.slideshare.net/nyaakobayashi/unity11-shader-forge-101-shaderforge)
- [Shader Forge Wiki](http://acegikmo.com/shaderforge/wiki/)
- [Nodes - Shader Forge](http://acegikmo.com/shaderforge/nodes/)

---

ご清聴ありがとうございました！
