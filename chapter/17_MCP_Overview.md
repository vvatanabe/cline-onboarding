---
marp: true
theme: default
paginate: true
header: "Cline 入門"
footer: "Nulab Inc. 2025"
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
