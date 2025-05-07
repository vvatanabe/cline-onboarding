# Cline 入門

Visual Studio Code 向け AI 開発支援ツール **Cline** の概要から実践ハンズオンまでを網羅した研修資料（Marp スライド）です。**Cline 公式ドキュメント** [https://docs.cline.bot/](https://docs.cline.bot/) の内容を元に作成しました。


章ごとに編集しやすい _chapter_ フォルダと結合スクリプトを同梱しています。

## 📁 リポジトリ構成

```text
.
├── chapter/                  # 01_〜23_ の分割スライド（Markdown）
│   ├── 01_Cline_入門.md
│   └── ...
├── scripts/
│   └── concat-marp.sh        # 結合スクリプト（bash）
├── slides.md                 # 結合済みスライド（生成物）
└── README.md                 # このドキュメント
```

> **ポイント**
>
> * `chapter/` 内の各ファイルは単体で Marp プレビュー可能
> * `slides.md` はスクリプト実行後に作られます

## 🛠 必要なツール

| ツール                        | 最低バージョン | 用途               |
| -------------------------- | ------- | ---------------- |
| Bash / Zsh                 | 4.x 以上  | スクリプト実行          |
| Marp CLI                   | 3.x 以上  | PDF / HTML 変換    |
| Node.js                    | 18.x 以上 | (Marp CLI 実行に必要) |
| VS Code + Marp for VS Code | 最新      | 章ごとのライブプレビュー     |

インストール例（macOS）:

```bash
brew install node
npm install -g @marp-team/marp-cli
```

## 🚀 使い方

### 1. スライド結合

```bash
# 出力ファイルは自由に指定可能
./scripts/concat-marp.sh chapter > slides.md
```

* 先頭ファイルのフロントマターだけを残し、章間に `---` を自動挿入します。
* 章ファイルを追加・並べ替えたら再実行してください。

### 2. VS Code でプレビュー

1. **Marp for VS Code** 拡張をインストール
2. `slieds.md` を開き `CMD/CTRL + SHIFT + V` → 全体スライドを確認
3. `chapter/01_...md` 等を開けば章単位でも編集できます。

### 3. PDF / HTML 生成

```bash
# PDF
marp slieds.md -o slides.pdf

# HTML
marp slieds.md -o slides.html
```

## ✏️ 編集・追加ガイド

1. `chapter/` に `24_新章タイトル.md` を追加
2. ファイル先頭に以下をコピペし内容を書く

   ```markdown
   ---
   marp: true
   ---
   # 新章タイトル
   ```
3. `concat-marp.sh` を再実行して結合ファイルを更新
4. VS Code プレビューでレイアウト確認 → commit / PR

> 連番は自然順ソート（01, 02, …, 10, 11, …）されます。

## 📄 ライセンス

Apache 2.0

## 参考リンク

* **Cline 公式ドキュメント**
  [https://docs.cline.bot/](https://docs.cline.bot/)
* **Marp** – Markdown Presentation Ecosystem
  [https://marp.app/](https://marp.app/)
* **Marp CLI / Actions**
  [https://github.com/marp-team/marp-cli](https://github.com/marp-team/marp-cli)
  [https://github.com/marp-team/actions](https://github.com/marp-team/actions)
