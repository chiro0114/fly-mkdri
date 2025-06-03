# mkdri

ターミナル上でムクドリが飛ぶアニメーションを表示するシェルスクリプトです。

## インストール

### システム全体にインストール

以下のコマンドを実行すると、`/usr/local/bin` に `mkdri` としてスクリプトをインストールし、どのユーザーでも使えるようになります。

```bash
sudo curl -fsSL https://raw.githubusercontent.com/chiro0114/fly-mkdri/main/fly-mkdri.sh \
  -o /usr/local/bin/mkdri
sudo chmod +x /usr/local/bin/mkdri
```

インストール後、以下のコマンドで動作を確認できます。

```bash
which mkdri    # /usr/local/bin/mkdri が返ってくればインストール成功
mkdri          # ムクドリのアニメーションが表示される
```

### ユーザー単位にインストール

システム全体ではなく、自分のアカウントだけで利用したい場合は `~/.local/bin` にインストールしてください。

1. `~/.local/bin` ディレクトリを作成（初回のみ）

   ```bash
   mkdir -p ~/.local/bin
   ```

2. スクリプトをダウンロードして `mkdri` として保存

   ```bash
   curl -fsSL https://raw.githubusercontent.com/chiro0114/fly-mkdri/main/fly-mkdri.sh \
     -o ~/.local/bin/mkdri
   ```

3. 実行権限を付与

   ```bash
   chmod +x ~/.local/bin/mkdri
   ```

4. `~/.local/bin` を `PATH` に追加（まだ設定していない場合）

   ```bash
   echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc
   source ~/.bashrc
   ```

インストール後、以下のコマンドで動作を確認します。

```bash
which mkdri    # ~/.local/bin/mkdri が返ってくればインストール成功
mkdri          # ムクドリのアニメーションが表示される
```

## 使い方

```bash
mkdri
```

実行すると、10秒間だけムクドリが左右に飛び回るアニメーションが表示されます。
