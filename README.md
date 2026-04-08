# dotfiles

Chezmoi や Mise を利用した開発環境構築用のリポジトリ。

## セットアップ手順

### Mac

Mac では **Homebrew** と **Mise** が既にインストールされていることを前提としています。
Miseはbrewでインストールである想定です。

1.  Mise で chezmoi をインストールします。
    ```bash
    mise use -g chezmoi
    ```
2.  Chezmoi を初期化し、設定を適用します。
    ```bash
    chezmoi init --apply https://github.com/YOUR_USERNAME/dotfiles.git
    ```

### Linux (Ubuntu, Arch, etc...)

Linux ではセットアップスクリプトが Mise のインストールから自動で行います。

1.  Chezmoi をインストール（またはバイナリをダウンロード）します。
    ```bash
    sh -c "$(curl -fsLS get.chezmoi.io)"
    ```
2.  Chezmoi を初期化し、適用します。
    ```bash
    ./bin/chezmoi init --apply https://github.com/nizyu/dotfiles.git
    ```

## 管理・運用

設定を追加・変更する場合は、Chezmoi のコマンドを使用します。

- 設定の追加: `chezmoi add ~/.config/xxx`
- 設定の編集: `chezmoi edit ~/.zshrc`
- 変更の適用: `chezmoi apply`
- リポジトリへの反映: `chezmoi cd` して git manage
