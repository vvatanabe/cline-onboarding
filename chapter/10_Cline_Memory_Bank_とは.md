---
marp: true
theme: default
paginate: true
header: "Cline 入門"
footer: "Nulab Inc. 2025"
---

# Cline Memory Bank とは？

## Clineに「記憶」を与えるための仕組みです  
→ セッションを超えて、プロジェクトの文脈を保持！

---

## なぜ必要？

- Clineはセッションごとに**記憶がリセット**されます
- Memory Bankに文脈を記録すれば、**次回も一貫した対応**が可能
- チーム開発でもプロジェクト知識を共有可能！

---

## メモリバンク構成（コアファイル）

| ファイル名           | 役割                                     |
|--------------------|----------------------------------------|
| `projectbrief.md`  | プロジェクトの目的・ゴールを定義（最重要）  |
| `productContext.md`| ユーザー視点の要件、解決したい課題         |
| `systemPatterns.md`| アーキテクチャ設計、設計パターン、関係構造 |
| `techContext.md`   | 使用技術・制約・依存関係など技術的な前提     |
| `activeContext.md` | 現在の作業・最近の変更・次のステップ         |
| `progress.md`      | 実装進捗・残課題・決定の履歴など             |

---

## 初期セットアップ

- [Cline Memory Bank Custom Instructions](https://docs.cline.bot/improving-your-prompting-skills/cline-memory-bank#cline-memory-bank-custom-instructions-copy-this) をコピーしてClineのカスタムインストラクションにペースト。
- Clineに「initialize memory bank」と伝えると初期化してくれます。

---

## Plan / Act モードでの役割

### Planモード（設計・戦略）
- メモリバンクを読み込む
- 状況整理 → 戦略立案 → 記録

### Actモード（実装）
- 現状を確認し、実行内容を文書に反映
- 変更内容を activeContext.md や progress.md に記録

---


## メモリバンク更新のタイミング

1. 設計や実装に大きな変化があったとき
2. 新しいパターンや学びがあったとき
3. 明示的に「update memory bank」と伝えたとき
4. コンテキストが曖昧になったと感じたとき

---

## ファイル関係の図式

<pre class="mermaid">
flowchart TD
  PB[projectbrief.md] --> PC[productContext.md]
  PB --> SP[systemPatterns.md]
  PB --> TC[techContext.md]

  PC --> AC[activeContext.md]
  SP --> AC
  TC --> AC

  AC --> P[progress.md]
</pre>

---

## 活用のコツ

- まずは projectbrief.md だけでも始めよう
- .clinerules に組み込めば、プロジェクトごとに記録が分離可能
- Clineに以下のコマンドを使って指示：

  - `initialize memory bank`（初期化）
  - `update memory bank`（更新）
  - `follow your custom instructions`（読込み）

---

## よくある質問

Q. READMEと何が違う？
→ READMEは概要、Memory Bankは構造化された詳細文脈です

Q. 他のAIでも使える？
→ Markdown構成のドキュメントなので他のLLMでも活用可能

Q. コード以外にも使える？
→ ライティング、デザイン、イベント運営など非技術系にも応用可
