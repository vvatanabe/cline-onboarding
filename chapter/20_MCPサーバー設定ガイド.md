---
marp: true
theme: default
paginate: true
header: "Cline 入門"
footer: "Nulab Inc. 2025"
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
