# 共通ルール

- 日本語でやりとりすること

# 基本ツール

- Mise
    - 環境構築用ツール
    - ワークスペースにmise.local.tomlを作ることで設定を行うこと
    - .env を利用した環境変数の管理は禁止
- Podman
    - Dockerのだいたいツールとして利用すること

# 基本ルール

## Browser Subagent 

Before using the `browser_subagent` tool, you MUST first run the `/start-browser` workflow to launch Chrome/Chromium in CDP mode. Without this step, browser_subagent will fail with "CDP port not responsive" errors.
This workflow is described on `~/.gemini/antigravity/global_workflows/start-browser.md`
