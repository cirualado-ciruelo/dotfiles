# dotfiles

## Set macOS.

```shell
$ xcode-select --install
$ cd dotfiles && make
```

## Set GitHub

```shell
$ gh auth login

# check
$ ssh -T git@github.com
$ gh auth status
```

## Set HHKB.

- Driver DL: `wget https://origin.pfultd.com/downloads/hhkb/driver/HHKBProDriver5.1.dmg`
- fn settings: 
  1. システム環境設定＞キーボード＞キーボードショートカットに進み、「F1、F2などのキーを標準ファンクションキーとして使用」にチェック
  2. システム環境設定＞キーボード＞キーボードショートカット＞キーボードに進み、「次のウィンドウを操作対象にする」 を `⌘@` から `⌘F1`

## Set Google IME.

1. PC Restart.
2. Add JA and EN in input keybord.
3. Delete default IME.

## Set visual studio code.

1. Press "shift + command + P" on visual studio code.
2. Search and Click "Command: Install 'code' command in PATH command".
3. Restart visual studio code.
4. Execute "cd dotfiles && ./vscode/sync.sh".
<!-- 5. If you want to output the current extensions, execute "code --list-extensions > ~/dotfiles/vscode/extensions". -->

## Set Karabiner.

1. Lunch App.
2. `open /Library/Application\ Support/org.pqrs/Karabiner-Elements/bin/`
3. Add security.
4. Execute "cd dotfiles && ./karabiner/sync.sh".

## Set raycast.

1. Press "command + ," on raycast.
2. Click "Advanced" tab.
3. If you want to export your raycast data, click "Export" button.
4. Click "Export" button.
5. Choose "~/dotfiles/raycast" directory.
6. If you want to import your raycast data, click "Import" button.
7. Click "Select file" button.
8. Choose "~/dotfiles/raycast/Raycast yyyy-mm-dd hh.mm.ss.rayconfig" file.
9. Click "Import" button.
10. Click "Import" button.
11. Click "Continue" button.

## Set google chrome.

```
1. Access each URL in "~/dotfiles/chrome/extensions" with Google Chrome.
2. Click "Add Chrome" button.
3. If you want to output the current extensions, execute "ls -l ${HOME}/Library/Application\ Support/Google/Chrome/Default/Extensions | awk '{print \$9}' | sed 's/^/https:\/\/chrome.google.com\/webstore\/detail\//g' | sed -e '1,2d' > ~/dotfiles/chrome/extensions".
```

## Maintenance

### Brew list

```shell
# アプリの関連データも消す
uninstall-cli.sh /Applications/tableplus.app
```

### Brewfile

```shell
# Update .Brewfile(sync ~/.Brewfile)
brew bundle dump --file .Brewfile --force
```

### Branch

1. 使用する端末ごとのブランチを切る
2. アップデートしたらpushしていく

違う端末に切り替えた時

1. 今いるブランチからmainにチェックアウト
2. 最新の端末ブランチを回収
3. 端末ブランチに帰る
4. 他の端末に切り替えたらこれを繰り返す
