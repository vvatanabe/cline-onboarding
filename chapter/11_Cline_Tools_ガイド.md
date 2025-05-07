---
marp: true
theme: default
paginate: true
header: "Cline 入門"
footer: "Nulab Inc. 2025"
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
