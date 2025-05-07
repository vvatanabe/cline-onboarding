---
marp: true
theme: default
paginate: true
header: "Cline 入門"
footer: "Nulab Inc. 2025"
---

# Cline 入門
Yuichi Watanabe

---

## はじめに

Visual Studio Code 向け AI 開発支援ツール **Cline** の概要から実践ハンズオンまでを網羅した研修資料（Marp スライド）です。**Cline 公式ドキュメント** [https://docs.cline.bot/](https://docs.cline.bot/) の内容を元に作成しました。

---


# Clineとは

## コーディングの未来を支えるAIアシスタント

---

## Clineとは

- **Cline**は、Visual Studio Codeに統合される**AI開発支援ツール**です。
- LLM（大規模言語モデル）とIDEの橋渡しをし、**生産性を高め、初心者でも扱いやすい開発環境**を提供します。

---

## Clineの特長

- **自然言語でコード生成・修正・実行指示**
- **明示的な承認が必要**なステップバイステップの開発支援
- プロジェクト全体を把握し、**大規模コードベースにも対応**
- **Model Context Protocol (MCP)** により、外部ツールやクラウド連携が可能

---

## できることの例

- ファイルの読み書き・コマンド実行・ブラウザ操作
- ツール連携による**デプロイや障害対応の自動化**
- 新人エンジニアの**オンボーディング支援**
- **自然言語だけでプロジェクト全体を動かす**ことも可能

---

## Clineで変わる開発体験

"AIと一緒に考え、作り、改善する"  

従来の補助的な生成とは異なり、Clineは**開発のパートナー**です。

---


# はじめてのClineセットアップ

## Clineを使い始める前に整えておく環境について説明します

---

## Step 1: VS Codeの準備

- Clineは**Visual Studio Code**（VS Code）で動作します
- まだ未導入の方は以下からダウンロード：
  - https://code.visualstudio.com/
- インストール後は「アプリケーション」や「スタートメニュー」に登録しておきましょう

---

## Step 2: 開発に必要なツールの導入

- Clineの活用には以下のツールが必要です：
  - **Git**（ソース管理）
  - **Node.js**（JavaScript実行環境）
  - **Homebrew**（macOSの場合のパッケージマネージャ）
- YouTube等のチュートリアル動画も活用しましょう

---

## Step 3: プロジェクトフォルダの整理

- すべてのプロジェクトを格納する**Cline用フォルダ**を作成しましょう：

  - macOS: `/Users/あなたのユーザー名/Documents/Cline`
  - Windows: `C:\Users\あなたのユーザー名\Documents\Cline`

- 例：
  - `Documents/Cline/workout-app`
  - `Documents/Cline/portfolio-website`

---

## Step 4: Cline拡張機能のインストール

- VS Code内で **「cline」拡張機能** を検索してインストール
- インストール後、VS Codeを再起動して有効化を確認
- 拡張機能が正しく読み込まれると、左側のサイドバーにClineアイコンが表示されます

---

## 準備完了！

これでClineを使う準備は整いました。  
VS Codeを開いて、Clineと一緒に最初のコーディングに挑戦してみましょう！

---

## Clineを使ってみよう

初めてのやりとりにおすすめのプロンプト：

> やあ、クライン！私のClineディレクトリに 「hello-world 」という新しいプロジェクトフォルダを作って、大きな青い文字で 「Hello World 」と書かれたシンプルなウェブページを作りたいのですが、手伝ってもらえますか？

---

## 上手に使うコツ

- **わからないことはそのまま聞いてOK**
- **エラーはコピペして共有**
- **スクリーンショットも活用可能**
- **難しい言葉でなくても大丈夫！**

---


# 開発に必要なツールのインストール

## Clineは環境構築も支援してくれます

---

## 必須ツール一覧

- **Node.js & npm**  
  JavaScriptやWebアプリ開発の基礎。多くの開発環境で必要になります。

- **Git**  
  コードの変更履歴管理やチーム開発に必須。

- **パッケージマネージャー**（OS別）  
  - macOS：Homebrew  
  - Windows：Chocolatey  
  - Linux：apt / yum

---

## Clineにまかせてインストール！

以下のプロンプトをClineに送るだけで、対話形式で安全にインストールが始まります。

### プロンプト

> こんにちは、クライン！
ソフトウェア開発の環境をセットアップするのを手伝ってほしいんです。
Homebrew、Node.js、Git、その他コーディングに必要なコアユーティリティのインストールを手伝ってもらえませんか？ステップ・バイ・ステップで案内してほしい。

✅ Clineは**すべてのコマンドを事前に表示**し、あなたの許可を得てから実行します。

---


# おすすめの技術スタック（2025年版）

## Clineと一緒に開発始めるための開発環境の例をご紹介します

---

## フロントエンド構成

- **Next.js 14+**  
  - Reactベースの最新Webアプリケーションフレームワーク
  - App Router対応（ファイル構成が直感的）

- **Tailwind CSS**  
  - クラス名で直感的にスタイル設定。CSSが書けなくても安心

- **TypeScript**  
  - JavaScriptをより安全・明確にした言語

---

## バックエンド構成

- **Supabase**：GitHub連携で簡単に使えるBaaS（Backend as a Service）
  - **PostgreSQL** データベース
  - **認証・ファイルストレージ・リアルタイム通信**すべて込み

- 無料プランあり（500MB DB、1GB ストレージ、50K MAU）

---

## デプロイ環境（Vercel）

- GitHubと連携し、自動でWebアプリを公開
  - プレビュー環境（URL）付き
  - 本番用CDNも自動
  - 無料プランで月間100GB転送、HTTPS付き

---

## AI開発のモデル選択（参考）

| モデル             | 入力費用 | 出力費用 | 用途                              |
|------------------|---------|---------|----------------------------------|
| Claude 3.5 Sonnet | $3.00   | $15.00  | 本番向け、複雑な作業に最適        |
| DeepSeek R1      | $1.00   | $3.00   | コストを抑えた本番環境に適する    |
| DeepSeek V3      | $0.14   | $2.20   | 開発中の実験・学習用途に最適      |

---

## メモリバンクと初期構成（プロジェクト準備）

1. プロジェクトルートに `cline_docs` フォルダを作成
2. 中に `projectBrief.md` を作成し、目的や仕様を記述
3. `.clinerules` ファイルを作成し、使用技術や構造を記述

&nbsp;

```markdown
# Project Configuration

## Tech Stack
- Next.js 14+ with App Router
- Tailwind CSS for styling
- Supabase for backend
- Vercel for deployment
- GitHub for version control
```

---

## 環境変数とセキュリティ

- .env.local に秘密情報を保存（開発用）
- .env を Git にコミットしない

---

## 困ったら？
- Cline内で /help と入力
- Clineの公式ドキュメントを参照
- Discordコミュニティで質問
- GitHubのIssueを検索
- Clineは「わからないときに聞ける開発パートナー」です！

---


# `.clinerules` ファイルとは？

## Clineにプロジェクトの前提条件やルールを伝える設定ファイルです

---

## `.clinerules` の目的

- Clineに**プロジェクト構成や開発方針を共有**
- コード生成時に**適切なディレクトリ構成や命名規則**を自動的に反映
- **セキュリティ上の注意点**もここで明示

---

## `.clinerules` テンプレート（技術スタック）

<br>

```markdown
# Project Configuration

## Tech Stack
- Next.js 14+ with App Router
- Tailwind CSS for styling
- Supabase for backend
- Vercel for deployment
- GitHub for version control
```

<br>

使用技術を明示することで、Clineは適切なコード生成を行います。

---

## `.clinerules` テンプレート（プロジェクト構造の指定）

<br>

```markdown
## Project Structure
/src
  /app         # Next.js App Router pages
  /components  # React components
  /lib         # Utility functions
  /types       # TypeScript types
/supabase
  /migrations  # SQL migration files
  /seed        # Seed data files
/public        # Static assets
```

<br>

ディレクトリ構成を指定しておくと、ファイル生成時に自動で反映されます。

---

## `.clinerules` テンプレート（マイグレーションファイルのルール）

<br>

```markdown
## Database Migrations
SQL files in /supabase/migrations should:
- Use sequential numbering: 001, 002, etc.
- Include descriptive names
- Be reviewed by Cline before execution
```

<br>

Clineはマイグレーションの命名規則も理解し、作成時に反映してくれます

---

## `.clinerules` テンプレート（セキュリティ設定の指定）

<br>

```markdown
## Security
DO NOT read or modify:
- .env files
- **/config/secrets.*
- Any file containing API keys or credentials
```

<br>

Clineに対して読んではいけないファイルや扱ってはいけない情報を指定可能。
→ 意図せぬ変更・情報漏洩を防げます

---

## `.clinerules` テンプレート（開発ワークフローの共有）

<br>

```markdown
## Development Workflow
- Cline helps write and review code changes
- Vercel automatically deploys from main branch
- Database migrations reviewed by Cline before execution
```
<br>

開発フローにClineをどう組み込むかを事前に伝えておくことで、効率的な対話が可能になります。

---

## .clinerules の活用ポイント

- プロジェクトの文脈をClineに伝える最も重要な設定
- チームでも共有しておけば一貫性のあるコード生成が可能
- プロジェクト初期に作成しておくのがベストプラクティス

---


# Clineの「コンテキスト」とは

## Clineにとって「コンテキスト」は、あなたのプロジェクトの理解そのものです

---

## コンテキストとは？

- Clineが把握している**プロジェクトの情報**
- 会話の履歴、コード構造、設計意図などを含む
- 共有ホワイトボードのようなもの

---

## コンテキストウィンドウとは？

- Clineが一度に扱える**情報の上限（トークン数）**
- モデルごとに上限が異なります：
  - Claude 3.5 Sonnet：**200,000 tokens**
  - DeepSeek：**64,000 tokens**

⚠️ 詰め込みすぎると精度が下がることも。70〜80%を目安にリセットを検討

---

## Clineが文脈を理解する方法

### 1. 自動取得（Clineが自ら行動）

- 関連ファイルの読み込み
- コード構造の探索
- パターン・依存関係の解析
- 質問による確認

### 2. ユーザーからの共有

- 特定ファイルの提供
- 要件・設計の共有
- フォーカスするポイントの指示

---

## コンテキストウィンドウの可視化

- Clineは**進捗バー**で使用状況を表示

  - ↑ 入力（あなたが送った内容）  
  - ↓ 出力（Clineが生成した内容）

- 長時間の作業や複雑な処理の前に確認する習慣を！

---

## コンテキストファイルの活用

コンテキストファイルはClineに「知識を継承するためのドキュメント」

1. **長期プロジェクト用（Memory Bank）**
    - プロジェクトに合わせて進化する生きたドキュメント
    - `techContext.md`, `systemPatterns.md` など
    - 設計やルールを記録し続ける

2. **タスクごと（Structured Approach）**
    - 要件・制約・決定事項を記録
    - 特定の実装タスク用に作成

---

## コンテキストファイルを効果的に使うには？

- 構造化：見出し・箇条書き・例を明確に
- 関連付け：概念間のリンクを入れる
- 更新：大きな変更のたびに反映
- 共有：チームで使いまわす（.clinerulesと併用）

---

## 実践Tips

- 新規プロジェクト：
  - Clineにコードベースを探索させる
  - 質問に答える／基本方針を伝える
- 継続開発：
  - コンテキストファイルを都度更新
  - Planモードで複雑な設計を共有
- チーム開発：
  - 共有コンテキストを維持（.clinerules活用）
  - 決定事項は必ず文書に残す

---


# モデル選択ガイド

## Clineで使えるAIモデルの特徴と選び方を紹介します

---

## モデル選びが重要な理由

- **Clineの賢さ**は使うモデルで変わります
- モデルごとに「得意分野」「価格」「記憶容量」が異なります
- モード（Plan/Act）ごとに**向いているモデル**も異なります

---

## コンテキストウィンドウの違い

> コンテキストウィンドウ = モデルが「一度に覚えられる量」

| モデル              | ウィンドウサイズ |
|-------------------|-----------------|
| Claude 3.5 Sonnet | 200,000 tokens  |
| DeepSeek V3/R1    | 128,000 tokens  |
| Gemini Flash 2.0  | 1,000,000 tokens|
| Gemini 1.5 Pro    | 2,000,000 tokens|

💡 例：200K = 英文で約15万語相当（プロジェクト全体の記憶も可能）

---

## 用途別おすすめモデル

### **Plan（思考・設計）向け**
- **DeepSeek R1**  
  論理構成・複雑タスクの分解に強い

- **o3-mini**  
  高・中・低の3つの推論モードを持ち状況に応じて柔軟に使える

- **Gemini Flash 2.0**  
  コンテキストが多いタスクに最適（最大1M）

---

### **Act（コーディング）向け**
- **Claude 3.5 Sonnet**  
  コード品質とツール使用の安定性が最高。本番コードに最適

- **DeepSeek V3**  
  Claude並の品質でコスパ良好。普段使いにおすすめ

- **Gemini 1.5 Pro**  
  2Mトークン対応で巨大コードベースも処理可

---

## コスト比較（1Mトークンあたり）

| モデル             | 入力 | 出力 | 特徴                             |
|------------------|------|------|----------------------------------|
| Claude 3.5       | $3.00| $15.00| 高品質コード・ツール信頼性抜群     |
| DeepSeek R1      | $0.55| $2.19| 思考系タスクに強く、コスパも良好    |
| DeepSeek V3      | $0.14| $0.28| 実装向き、安価で安定               |
| o3-mini          | $1.10| $4.40| 高推論と柔軟性、要OpenAI Tier 3     |
| Gemini Flash 2.0 | 無料 | 無料 | 万能型。高速かつ大容量              |
| Gemini 1.5 Pro   | 無料 | 無料 | 最大2Mトークンで複雑コードも余裕    |

---

## モデル選びのポイント

- **PlanかActか？** → タスクの性質に応じて使い分け
- **トークン上限** → コンテキストが多いならFlash/Gemini
- **コスト vs 品質** → 本番コードならClaude、普段使いはV3
- **バックアップモデル** → API障害時に切り替えられる体制を

---

## ローカルモデルについて（注意）

> ローカル実行は非推奨

- Claude/DeepSeekの**本来の性能はローカルでは再現不可**
- メモリ32GB以上でも、精度・ツール連携・速度に大きく劣る
- 特にClineのツール連携がうまく機能しません

**→ クラウドモデル利用が推奨されます**

---


# プロンプトエンジニアリングガイド

## Clineを自在に操るための「伝え方」の工夫を学びましょう

---

## Custom Instructions（カスタム指示）とは？

- Clineに**あなたの方針や性格を教える設定**
- 常に有効で、すべてのやりとりに影響します
- VSCodeで Cline 拡張機能の ⚙️設定から入力可能
- 例：
  - コーディングスタイルの統一
  - エラーハンドリングの方針指定
  - ファイル形式や命名規則の強制

---

## .clinerules ファイルとの違い

| 項目                     | Custom Instructions        | .clinerules                   |
|------------------------|----------------------------|-------------------------------|
| 適用範囲               | 全プロジェクト             | プロジェクトごと              |
| 保存場所               | ユーザー設定               | プロジェクトルート             |
| 用途                   | 個人の思考やスタイル指定   | プロジェクト固有の開発方針     |
| チームでの共有         | 難しい                     | Gitで共有可能                 |

---

## .clinerules フォルダ構成の活用

<br>

```plaintext
your-project/
├── .clinerules/
│   ├── 01-coding.md
│   ├── 02-documentation.md
│   └── current-sprint.md
├── clinerules-bank/
│   ├── clients/client-a.md
│   ├── frameworks/react.md
│   └── project-types/api-service.md
```

<br>

- 必要なルールだけを .clinerules/ に配置
- プロジェクトや担当ごとに柔軟にルールを切り替え可能

---

## .clineignore ファイル

- Clineが解析しないファイル／ディレクトリを指定できます
- .gitignore に似た構文
- ノイズを減らし、精度とパフォーマンス向上

<br>

```
node_modules/
dist/
.env
*.csv
```

---

## 効果的なプロンプトの書き方

- 目的を明確に：「このコードを改善して」ではなく「簡潔にして」
- 具体的に：@ファイル名でコードを指定すると精度UP
- 段階的に：大きなタスクは細かく分ける
- 確認を促す：例「自信度を10段階で教えて」

---

## よく使われるプロンプト例（1/2）
### コンテキスト管理
- 「Cline、user-auth.js を新規作成してJWTログインを実装して」
- 「前回の作業をまとめて cline_docs/summary.md に記録して」

### デバッグ
「このエラーを解析して修正方法を提案して」
> Error: Cannot read property 'id' of undefined

---

## よく使われるプロンプト例（2/2）

### コード改善
- 「この関数、長すぎるので関数を分割して」
- 「ロジックを簡潔にして読みやすくして」

### 機能追加
- 「ユーザー一覧を表示するReactコンポーネントを作って」
- 「この機能にローディング表示を追加して」

---

## 上級プロンプトテクニック

- 信頼度スコアを要求：「この解決方法、自信度を1〜10で教えて」
- 完了を急がせない：「完全に理解するまでコードを書かないで」
- ドキュメント更新の指示：「この変更に応じてREADMEも更新して」

---

## おすすめカスタムプロンプト集

| カテゴリ   | 例                                                          |
| ------ | ---------------------------------------------------------- |
| コード完全性 | `コードを省略しないこと。常に完全なコードを与えてください。`                 |
| 分割提案   | `このファイルは大きすぎます。安全な分割戦略を提案してください。`   |
| 思考の明確化 | `コーディングする前に、実装計画をMarkdownで書きましょう。` |
| 文書の整合性 | `これらの変更でドキュメントを更新することを忘れないでください。` |

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

---


# Cline Tools Guide

## Clineができることを知って、もっと活用しよう！

---

## Clineができること ✅

- ファイルの作成・編集・検索
- ターミナルコマンドの実行
- コードの解析とリファクタリング
- バグの特定と修正
- 外部ツールとの統合（MCP）
- Webブラウザとの連携（テストやログ確認）

---

## 最初の一歩：タスクの始め方

1. チャットに指示を書く  
例：`"ReactのHeaderコンポーネントを作成して"`

2. 文脈を共有する  
`@file:src/App.tsx` のようにファイルやフォルダを指定

3. 変更内容をレビュー  
Clineは**差分（diff）を表示** → 承認して実行

---

## よく使うタスク例

- 新しいファイル作成：  
  `"Footerコンポーネントを新規作成して"`

- バグ修正：  
  `"src/utils/format.ts のエラーを修正して"`

- コード改善：  
  `"ButtonコンポーネントをTypeScriptでリファクタして"`

- コマンド実行：  
  `"npm install axios を実行して"`

---

## Clineが使う主要ツール一覧

### 🔧 ファイル操作系
| ツール              | 機能                             |
|-------------------|----------------------------------|
| `write_to_file`    | ファイルの作成・上書き             |
| `read_file`        | ファイル内容の読み取り             |
| `replace_in_file`  | 対象箇所を編集                   |
| `search_files`     | 正規表現で検索                    |
| `list_files`       | ディレクトリ内容の一覧表示         |

---

### 💻 ターミナル操作系
| ツール                | 機能                           |
|---------------------|------------------------------|
| `execute_command`    | ターミナルコマンドの実行         |
| `list_code_definition_names` | 定義された関数/型の一覧表示  |

---

### 🌐 MCPツール（拡張連携）
| ツール              | 機能                         |
|-------------------|----------------------------|
| `use_mcp_tool`     | MCPサーバーのツールを実行      |
| `access_mcp_resource` | MCP APIなどの資源にアクセス   |

> 例：天気APIツールを定義 → `weather forecast` を取得

---

### 🤝 ユーザーとの対話ツール

| ツール                     | 機能                       |
|--------------------------|--------------------------|
| `ask_followup_question`   | 追加質問で意図を確認         |
| `attempt_completion`      | タスクを完了して結果を提示     |

---

## 使用例：ファイルの作成

```xml
<write_to_file>
  <path>src/components/Header.tsx</path>
  <content>
    // Header component code
  </content>
</write_to_file>
```

---


# Checkpointsとメッセージ編集機能

## Clineで安心して実験・開発を進めるための2つの強力な機能

---

## Checkpointsとは？

- 各ステップごとに**自動で保存されるスナップショット**
- **Gitとは独立**した影響のない記録方法
- いつでも**コードやタスク状態を巻き戻せる**
- **実験的な操作も安心**して試せる

---

## どうやって動く？

- Clineが**ツール（編集・実行）を使うたびに保存**
- **シャドウGitリポジトリ**を使用して管理
- **Git履歴は汚さず**、セッションの流れは保持される

---

## ロールバックのオプション

| モード名                  | 内容                                                    | 使う場面                            |
|-------------------------|---------------------------------------------------------|-------------------------------------|
| Restore Task and Workspace | 会話とファイル両方を巻き戻す                                | すべてやり直したいとき               |
| Restore Task Only         | 会話だけ巻き戻す（ファイルは現状維持）                      | 別の指示を試したいとき               |
| Restore Workspace Only    | ファイルだけ巻き戻す（会話は維持）                          | 実装だけ変えたい／別アプローチ試す   |

---

## 💡活用例とメリット

### 1. Auto-Approveモードで高速開発

- 差分確認をスキップしても安心
- 後から簡単に巻き戻せる

### 2. 複数アプローチの比較

- 設計パターンを比較しやすい
- 「元に戻す」がすぐできるので実験し放題

---

## ✨ベストプラクティス

- **Checkpointsは実験の安全ネット**
- 差分が不満でも **一部だけ巻き戻す** など柔軟に対処可能
- 機能単位で「やり直し」や「比較検証」が簡単
- 🗑️ Checkpointsを削除したいときは → 「Delete All History」から一括削除可能

---

## メッセージ編集機能

- **送信済みのチャットを再編集できる！**
- より良い言い回しや詳細を後から追加可能
- 初回メッセージ以外はすべて編集対象

---

## 編集時の選択肢

| オプション          | 動作内容                                         |
|-------------------|----------------------------------------------|
| Restore Chat       | チャットのみ巻き戻して再送信（ファイルは変更なし） |
| Restore All        | チャットとファイルの両方を巻き戻して再送信       |

---


# Plan & Act モードとは？

## Cline独自の開発モード切替  
計画フェーズと実装フェーズを**明確に分離**することで、  
再現性・保守性の高いコードを実現！

---

## 各モードの役割

### 🧠 Plan モード（計画）

- 要件や戦略の整理に特化
- **コード変更は不可**
- プロジェクト全体を把握・分析
- 実装前の議論と方針策定

---

### 🛠 Act モード（実装）

- **Planモードで立てた計画に基づき実装**
- コードへの変更が可能
- ファイル作成・編集・実行コマンドもOK
- Planモードの文脈を保持したまま作業できる

---

## Plan モードの活用法

* 新機能の要件整理
* アーキテクチャ検討
* デバッグ対象の調査
* 必要ファイルの読込み
* 実装計画のMarkdown化も可能！

> ❗コードは**このモードでは書かない**

---

## Act モードの活用法

* 実装フェーズの開始
* 既存計画に沿ったコード編集
* コマンド実行・ビルド・テスト
* 差分レビュー → 適用 or 巻き戻し

---

## よくあるユースケース

| タイミング              | 推奨モード   |
| ------------------ | ------- |
| 新機能を設計するとき         | Plan    |
| バグが再現しない／調査が必要なとき  | Plan    |
| 計画が固まっていて実装するだけのとき | Act     |
| テストを書いたり確認したいとき    | Act     |
| 計画と違う問題が見つかったとき    | Planに戻す |

---

## Plan & Act のベストプラクティス

### Plan時に：

* 要件をできるだけ具体的に伝える
* 関連ファイルを@fileで指定
* 懸念点や優先順位を明示する
* 可能であれば**実装方針をMarkdown化**

---

### Act時に：

* Planで合意した内容をベースに作業
* 差分や変更履歴を確認しながら進める
* 決定事項はメモリバンクや.progress.mdに反映

---

## Power Tips 💡

* Planで**例外ケースやエッジケース**も洗い出す
* Act中に複雑化したら**すぐPlanに戻す**
* Plan中に「Markdown化して」と頼むと後で振り返りやすい

---


# new_taskツールと高度なコンテキスト管理戦略

Clineは長時間・大規模タスクに対応するため、  
**`new_task` ツール**と**文脈保持機能**を搭載しています。

---

## new_taskツールとは？

🧰 現在のタスクを終了し、直後に**次のタスクを新たに開始**できるツール

🔁 コンテキストの引き継ぎが可能 → 事前定義された内容を新しいタスクに渡せる

🧠 例：要約、次のステップ、コードスニペットなど

---

## コンテキストの可視化と管理

🧠 Clineは現在のコンテキスト使用率（token数）を常に追跡  
📊 これをもとに、セッションの切り替えを提案

> 例：「使用率が70%を超えたので、新しいタスクを開始しましょうか？」

---

## /newtask スラッシュコマンド

- 自分から明示的にタスク分離したいときに使う
- `/newtask` と入力するだけでOK
- Clineが**現在の要点・次の作業内容**をまとめて提示
- 内容は確認・修正・承認できる

---

## new_taskの使いどころ

| 活用例                         | 内容                                                   |
|------------------------------|--------------------------------------------------------|
| 文脈が増えすぎてLLM性能が劣化してきた時 | context使用率に応じて切り替え（例：70%超）                  |
| サブタスクを分割して進めたい時         | Planモードで設計 → subtaskごとに分離                      |
| 会話の整理がつかなくなってきた時       | 会話と実装の整理を兼ねてセッションを再スタート              |
| boilerplateを自動挿入したい時         | 特定のテンプレートやルールを事前に読み込んだ状態で新規開始     |

---

## .clinerulesと組み合わせて自動化！

`new_task` × `.clinerules` により**戦略的なセッション制御が可能**になります：

- 使用率に応じた自動トリガー（例：>50%）
- モデルごとのtoken閾値に応じた分岐
- 処理単位（関数・テスト単位）での**ブレークポイント設定**

---

## .clinerulesによる引き継ぎ形式（例）

<br>

```plaintext
## Completed Work:
- 実装済み機能一覧
- 編集／作成したファイル
- 主要な設計決定

## Current State:
- 現在の進捗や重要ファイルの状態

## Next Steps:
- 優先順位付きのToDo

## References:
- 関連コード／リンク
- ユーザー設定／パターン
```

---

## 典型的なフロー（例）

1. Planモードで設計
2. Subtask Aの実装
3. context使用率 > 70%
4. 新しいタスク作成の提案
5. ユーザー確認
6. 承認、new_task起動
7. 次のタスクへ文脈を引き継ぎ

---

## .clinerules の例： タスクハンドオフ戦略ガイド

[Task Handoff Strategy Guide](https://docs.cline.bot/exploring-clines-tools/new-task-tool#example-.clinerules-task-handoff-strategy-guide)はコンテキストウィンドウ管理にnew_taskを使うことに特化した.clinerulesの例です。コピー＆ペーストで.clinerulesに追加できます。

---


# Slash Commands  
Clineをもっと便利に使うためのショートカット集

---

## /newtask：新しいタスクへ分岐

タスクを区切って新しいフェーズを始める。前の文脈を保持したまま分岐や整理が可能。

📌 **使い方**  
- チャット欄に `/newtask` と入力
- Clineが現在の作業状況を要約
- ユーザーが確認・承認 → 新タスク開始

💡 **活用例**  
- Feature Aの実装を終えた → Feature Bへ分岐  
- 設計が一段落 → 実装フェーズへ移行  
- 思考を切り替えて別アプローチを試したいとき

---

## /smol または /compact：会話の要約

長くなった会話を**要約して圧縮**し、パフォーマンスと文脈の焦点を保つ

📌 **使い方**  
- `/smol` だけでもOK  
- `/smol コード変更に関する部分だけ要約して` のように指示追加も可能

💡 **活用例**  
- デバッグが長期化したセッションでの整理
- 前半の設計議論をまとめて、後半を実装に集中させる

---

## どちらを使うべき？

| 状況                           | 推奨コマンド     | 理由                                        |
|------------------------------|------------------|---------------------------------------------|
| フェーズが明確に変わる時        | `/newtask`       | セッションを整理して文脈を保ったまま再出発       |
| 履歴が長くなりすぎた時          | `/smol`          | 会話の中間を要約して焦点を維持                 |
| 同じ課題を続けつつ履歴を軽くしたい | `/smol`          | 現在のタスクを維持しながらtoken削減             |
| 新しい探索や方針に分岐したい時    | `/newtask`       | 会話とコードの両方を切り替えてスッキリ始めたい   |

---

## なぜコンテキスト管理が重要？

🧩 **性能維持**  
context使用率が増えすぎると、LLMが**文脈を見失ったり遅くなったり**します

💰 **コスト削減**  
Token使用量を抑えられる → モデル利用料金の節約

🎯 **文脈の鮮度と集中力**  
新しいタスクや要約を通じて「今重要な情報」だけに絞ることができる

---


# Remote Browser Support  
ClineからWebブラウザを直接操作！

---

## Remote Browserとは？

🧠 ClineがリモートChromeインスタンスを制御し、以下を実現：

- Webサイトの閲覧・操作
- ローカルWebアプリのテスト
- UIレイアウトの確認
- フォーム入力やクリックの自動化
- スクロールや画面キャプチャ

🔍 Viewport: 900x600px（ノートPC相当）  
🪵 Consoleログも自動取得

---

## 基本的な使い方

🧾 シンプルな指示で操作可能：

- "https://example.com を開いて"
- "ログインボタンをクリックして"
- "検索ボックスに 'Hello world' と入力"
- "下にスクロールして"
- "ブラウザを閉じて"

💬 Clineが自動でスクリーンショットを返してくれます！

---

## 使用例ワークフロー

### 1. Webアプリの動作確認

npm start で Reactアプリを起動 → [http://localhost:3000](http://localhost:3000) にアクセスして表示確認

### 2. デザインレビュー

[https://example.com](https://example.com) にアクセスし、レイアウトや配色をレビュー

### 3. フォーム入力テスト

/contactページを開いて、ダミーの名前・メールを入力し送信

---

## 注意点と制約

❗ **ブラウザは1つまで**  
→ 新しいURLを開くには「移動」か「再起動」

❗ **ブラウザを閉じないと他のツールが使えない**  
→ ファイル編集やターミナル操作前に必ず閉じる

❗ **クリックがうまくいかない時は**  
→ 要素の位置やラベルをより具体的に指示

---

## よくある用途

| 用途             | 説明                  |
| -------------- | ------------------- |
| Web開発          | ローカルアプリのテストやレイアウト確認 |
| UI/UXレビュー      | デザインのフィードバック取得      |
| フォームテスト        | 入力検証・送信確認           |
| コンテンツ調査        | Web情報の収集支援          |
| スクロールやインタラクション | 実際のユーザー操作の代行        |

---


# MCP Overview  
Model Context ProtocolでAIをデータに接続！

---

## MCPとは？

🧩 MCP = LLMと外部ツールをつなぐ統一プロトコル

- LLMが **安全にツールを実行** できるようにする仕組み
- 小さなAPIサーバー（＝MCPサーバー）を通じて外部と接続
- 例: GitHub, Notion, 天気情報, DB などと連携可能

🧠 例えるなら「AI向けのUSB-Cポート」

---

## MCPの構成要素

- **MCPサーバー**：LLMが使える「ツール群」を提供
- **ツール（Tool）**：LLMが呼び出せる関数/API
- **リソース（Resource）**：読み取り専用の構造化データ
- **MCPホスト**：Clineなど、MCPサーバーとLLMをつなぐ存在

🔒 **セキュリティ重視**  
→ ユーザー許可が必要 / 認証情報は安全に管理

---

## ユースケース例（1/2）

🖥️ Webサービス連携：
- GitHubのIssue監視
- Twitterポスト自動化
- 天気情報の取得

🌐 ブラウザ操作：
- フォーム送信自動化
- スクレイピング
- UIテストとスクリーンショット

---

## ユースケース例（2/2）

📊 データベース操作：
- 売上レポート生成
- 顧客分析
- BIダッシュボード更新

📚 ドキュメント生成：
- APIドキュメントの自動作成
- アーキテクチャ図の生成
- READMEのメンテナンス

---

## Clineとの連携

🛠️ MCPサーバーを **Clineで構築・利用可能！**

- コード自動生成：自然言語でMCPサーバー構築を依頼
- GitHubからクローンしてビルド
- `.env`や依存関係も自動設定
- デバッグ支援あり

🚀 Clineから直接ツールを呼び出せる  
→ 会話の文脈に応じて適切なツールを提案・実行！

---

## セキュリティの注意点

✅ API認証：環境変数で安全に管理  
✅ アクセス制限：信頼できるユーザーのみに  
✅ 入力バリデーション：攻撃対策に必須  
✅ ログ管理：機密情報の露出に注意

---

## 始め方・探し方

📦 MCPサーバーを探す方法：

- GitHub:  
  https://github.com/modelcontextprotocol/servers  
  https://github.com/punkpeye/awesome-mcp-servers

- ディレクトリ:  
  https://mcpservers.org/  
  https://mcp.so/  
  https://glama.ai/mcp/servers

- 動画ガイド（おすすめ）:  
  🔗 https://www.youtube.com/watch?v=b5pqTNiuuJg

---

## 🧠 Model Context Protocol ＝ 「AIと外部ツールをつなぐ共通言語」

✨ MCPの活用でClineは：

- 外部サービスと自在に連携  
- セッションの文脈に応じてツール提案  
- 自動化・拡張性が大幅向上

---


# MCP Marketplace  
Clineを拡張するMCPサーバーを1クリック導入！

---

## MCP Marketplaceの使い方（1/2）

1. マーケットを開く：
Clineのトップバーから「Extensions（四角アイコン）」をクリック
2. サーバーを選ぶ：
カテゴリ別にサーバーをブラウズ（例：Search, Filesystems, Research）
3. インストール & 設定：
APIキーが必要な場合はClineが取得方法をガイド →
インストール後、MCP設定に自動追加

---

## MCP Marketplaceの使い方（2/2）

4. 確認：
設定画面でインストール完了を確認
5. 利用開始！
例：「Perplexityで最近のReactの動向を調べて」

---

## インストールの裏側で起こること

1. 📥 **コード取得 & ビルド**  
`/Users/<username>/Documents/Cline/MCP/` にクローン＋依存解決

2. 🔐 **設定登録**  
`/Users/<username>/Library/Application Support/Code/User/globalStorage/saoudrizwan.claude-dev/settings/cline_mcp_settings.json` にサーバー情報登録  

3. 🚀 **サーバー起動**  
別プロセスで起動 → stdio または HTTP でClineと通信

4. 🤝 **Clineと統合**  
サーバーのツールが `use_mcp_tool` 経由で利用可能に！

---

## MCP Rulesで自動化（1/2）

`.clinerules`ファイルに以下のようなMCP Rulesを記述してMCPサーバーの「使い分け」自動化！

```json
{
  "mcpRules": {
    "webInteraction": {
      "servers": ["firecrawl-mcp-server", "fetch-mcp"],
      "triggers": ["web", "scrape", "browse", "website"],
      "description": "Tools for web browsing and scraping"
    }
  }
}
```

---

## MCP Rulesで自動化（2/2）

- カテゴリ: グループ関連サーバー (例:「webInteraction」、「mediaAndDesign」)
- サーバー: 各カテゴリのサーバー名を一覧表示します
- トリガー: これらのサーバーをアクティブにするキーワード
- 説明: 人間が読めるカテゴリの説明


🧠 Clineがキーワードを検知し、該当MCPを自動選択！

---

## トラブルシューティング

🛠️ よくある問題と対策：

* Node.js 18+ / Python 3.10+ が必要
* ネットワーク接続とAPIキーの確認
* MCP設定ファイルに誤りがないか確認
* 別プロセスでポート競合がないか確認
* エラー時は `cline_mcp_settings.json`と該当サーバーフォルダを削除し再インストール

---


# GitHubからのMCPサーバー追加手順  
Clineで既存のMCPサーバーを導入・活用する方法

---

## MCPサーバーを探すには？

🔍 主な探索先：

- ✅ [modelcontextprotocol/servers](https://github.com/modelcontextprotocol/servers)
- ✅ [punkpeye/awesome-mcp-servers](https://github.com/punkpeye/awesome-mcp-servers)
- 🌐 オンラインディレクトリ:
  - https://mcpservers.org/
  - https://mcp.so/
  - https://glama.ai/mcp/servers
- 📖 [PulseMCPブログ](https://www.pulsemcp.com/)：MCP活用アイデアやFAQ掲載

---

## ClineでGitHubからMCPサーバーを追加する流れ

1. 🗣️ ユーザー：「Cline、このMCPサーバーを追加して」  
   → GitHub URLとREADME（任意）を渡す

2. 🧠 Clineが判断：「package.jsonがあるので`npm run build`しましょうか？」

3. ✅ ユーザー：「Yes」

4. 🛠️ Clineがビルド、設定ファイル `cline_mcp_settings.json` に登録

5. 📁 APIキー・実行パスも対話で設定可能

6. ✅ Cline：「MCP Inspectorで接続テストを行います」

---

## 実例：Braveブラウザ制御サーバーの追加

```text
User: GitHubはこちら → https://github.com/modelcontextprotocol/servers/tree/main/src/brave-search

Cline: npm run buildが必要です。実行して良いですか？

User: OK

Cline: Braveのパスは？

User: /Applications/Brave Browser.app/Contents/MacOS/Brave Browser

Cline: 設定完了！テストしますか？

User: Go ahead!
```

💡 対話的にインストール＆設定できるのがClineの強み！

---

## 裏でClineが行う処理

🧩 **リポジトリのクローン**

🧱 **ビルドコマンドの実行**（例：`npm run build`）

⚙️ **設定ファイルの更新**（`cline_mcp_settings.json`）

🔑 **APIキーや環境変数の追加**

🧪 **MCP Inspectorで接続テスト**

---

## ベストプラクティス

✅ **テストを忘れずに**
MCP Inspectorで動作確認を必ず行う

✅ **バージョン管理を活用**
サーバーコードはGitで管理しよう

✅ **最新の状態を保つ**
MCPサーバーは定期的にアップデートを確認

✅ **Clineとの対話を活用**
「このAPIキーはどこで設定すべき？」など、気軽に相談

---


# MCPサーバー設定ガイド  
〜 ClineでのMCP管理と活用の基本 〜

---

## 各MCPサーバーの個別管理方法（1/2）

### 📍 管理パネルの開き方  
「MCP Servers」→ 対象サーバー名をクリック

### 🧹 サーバー削除
Delete Server」ボタンをクリック  

### 🔄 サーバー再起動
再起動アイコン or 「Restart Server」ボタンをクリック

---

## 各MCPサーバーの個別管理方法（2/2）

### ✅ 有効/無効切り替え
トグルスイッチで個別にオン・オフ可能

### 🕐 タイムアウト設定
- 下部「Request Timeout」から応答待ち時間を設定  （30秒〜1時間、デフォルト1分）

---

## MCP設定ファイルの構造（例）

📄 `cline_mcp_settings.json` MCPサーバーを直接JSON形式で構成可能！

```json
{
  "mcpServers": {
    "my-local-tool": {
      "command": "my-tool",
      "args": ["--mode", "analyze"],
      "env": {
        "API_KEY": "your_key"
      },
      "autoApprove": ["analyze_api"],
      "disabled": false
    }
  }
}
```

---

## 通信方式の違い

### 🔌 STDIO (ローカル向け)

* stdin/stdoutでClineと通信
* セキュリティ高、レイテンシ低
* HTTP不要でセットアップが簡単

### 🌐 SSE (リモート向け)

* Server-Sent Eventsで通信
* 複数クライアント対応
* ネットワーク経由で外部API接続に便利

---

## MCPツールの活用方法

📝 **使い方は簡単！**

* チャットで自然に指示するだけ
  例：「APIのパフォーマンスを分析して」

🧠 Clineが文脈をもとに最適なMCPツールを提案
✅ 承認 or 自動承認設定でツール実行！

---

## トラブル対処法

| 問題         | 解決方法                    |
| ---------- | ----------------------- |
| サーバーが応答しない | サーバーが実行中か確認、ポートやURLを再確認 |
| 権限エラー      | APIキーや環境変数の設定を確認        |
| ツールが表示されない | サーバー実装と設定ファイルを確認        |
| 実行が遅い      | Network Timeoutを延長してみる  |

---


# ハンズオン／演習  
## Cline を体感しよう！

---

## 演習 1 : Hello Cline! （1/2）

### 目標
- VS Code + Cline で “Hello World” サイトを自動生成する  
- **Plan → Act** モードの切り替えを体験する

---

## 演習 1 : Hello Cline! （2/2）

### 手順
1. **Plan モード**で Cline に次を送信  

```
新しい Next.js14 プロジェクト `hello-world` を作り、
大きな青文字で "Hello World" を表示するページを作りたい。
実装計画を Markdown で書いてください。
```

2. 計画を確認し、OK なら **Act モード**へ切り替え  
3. Cline が提示する差分を承認 → `npm run dev` で動作確認  
4. **Checkpoints** で好きなステップへロールバックしてみる

---

## 演習 2 : .clinerules を書こう （1/2）

### 目標
- `.clinerules` でプロジェクトのルールを定める

---

## 演習 2 : .clinerules を書こう （2/2）

### 手順

1. ルートに `.clinerules` を新規作成  
2. 以下のテンプレを貼り付け、.clinerulesを編集

```markdown
# Project Configuration
## Tech Stack
- Next.js 14
- Tailwind CSS
## Security
DO NOT read .env*
```

3. Cline に`.clinerules を読み込んで、内容を要約してください`と送り、認識を確認

---

## 演習 3 : Memory Bank を初期化

### 目標

* コンテキストを長期保存する仕組みを理解する

### 手順

1. Cline に `initialize memory bank` と入力
2. `./memory-bank` 内に出力されたファイルの内容を確認する

---

## 演習 4 : MCP Marketplace で拡張（1/2）

### 目標

* MCP サーバーを 1 クリック導入し、ツールを呼び出す

---

## 演習 4 : MCP Marketplace で拡張（2/2）

### 手順

1. 「Extensions」パネル → **“firecrawl‑mcp‑server”** をインストール
2. 有効な API キーを取得する
    - https://www.firecrawl.dev/app/api-keys でアカウントを作成、APIキーを取得
    - MCP 設定ファイルの FIRECRAWL_API_KEY の値を生成した API キーに更新

3. チャットで以下のように依頼：

   ```
   https://nulab.com をスクレイピングして見出しタグだけ抽出してください
   ```

4. `firecrawl_scrape` が自動提案される → 承認

---

## 演習 5 : Remote Browser 操作（1/2）

### 目標

* ローカルで起動したアプリをブラウザ経由でテスト

---

## 演習 5 : Remote Browser 操作（2/2）

### 手順

1. `npm run dev` で `http://localhost:3000` を起動
2. Cline に以下のように依頼

   ```
   http://localhost:3000 を開いてスクリーンショットを撮り、
   画面に "Hello World" があるか確認して
   ```

3. スクショを確認し、CSS を変更後もう一度テスト
4. ブラウザを閉じないと他ツールが使えない点を体験

---

## 演習 6 : new\_task / smol の違いを実感

### 目標

* 大きな文脈を整理してタスクを分割するワークフローを学ぶ

### 手順

1. 長めの設計議論を 3〜4 回チャットで続けてコンテキストを増やす
2. Cline が「70% を超えました」と提案したら `/newtask` を承認

   * 引き継ぎ要点を確認
3. 次は同じ状況で `/smol` を入力し、要約だけで続行する違いを比較

---

## 演習 7 : ロールバックと差分比較

### 目標

* Checkpoints を使って安全に実験するスキルを得る

### 手順

1. `src/components/Header.tsx` を Act モードで意図的に壊す
2. ビルドエラーを確認
3. **Restore Workspace Only** でコードだけ巻き戻し
4. **Restore Task Only** で会話だけ巻き戻し

   * 差分がどう復元されるか比べる

---


# まとめ
## Clineで変わる開発ワークフロー

---

## Cline = AI開発パートナー

VS Code × LLM で “考える・書く・直す” をシームレスに支援
→ 個人もチームも開発スピードを大幅アップ

---

## 今日学んだ５つの柱

  1. **Plan / Act モード**で思考と実装を切り替え
  2. **Checkpoints & メッセージ編集**で安全な試行錯誤
  3. **.clinerules & Memory Bank**で文脈とルールを共有
  4. **MCP & Marketplace**で外部サービスをワンクリック拡張
  5. **new_task / smol**でコンテキストを最適管理

---

## 明日からの実践ポイント

  1. 小さなタスクを Cline に依頼して **体験を深める**
  2. `.clinerules` を整備し **チーム標準** を作る
  3. Memory Bank を活用し **知識を蓄積**
  4. 必要に応じて MCP を導入し **自動化範囲を拡大**

---

> **Let’s code the future, together with Cline.** 🚀

---


# 参考文献
https://docs.cline.bot/
