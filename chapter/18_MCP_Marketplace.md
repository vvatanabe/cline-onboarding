---
marp: true
theme: default
paginate: true
header: "Cline 入門"
footer: "Nulab Inc. 2025"
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
