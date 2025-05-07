---
marp: true
theme: default
paginate: true
header: "Cline 入門"
footer: "Nulab Inc. 2025"
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
