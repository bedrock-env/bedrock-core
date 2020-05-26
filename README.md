# Bedrock

A framework for constructing a standardized setup for dotfiles.

## Setup

### Installation

#### Preferred

- Obtain [Bedrock CLI](https://github.com/bedrock-env/bedrock-cli)
- Run `bedrock setup install`
- Add `source $HOME/.bedrock/bedrock.zsh` to `$HOME/.zshrc`

#### Manual

Clone the repository.

```bash
git clone git@github.com:bedrock-env/bedrock.git
```

Add `source $HOME/.bedrock/bedrock.zsh` to `$HOME/.zshrc`

### Achieving a pretty terminal in macOS

#### Fonts

The recommended font to use in iTerm2 and Terminal is `Meslo LG M Regular Nerd Font Complete` (non-mono).

- Obtain [Meslo LG M Regular Nerd Font Complete](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Meslo/M/Regular/complete)
- Copy Meslo LG M Regular Nerd Font Complete.ttf (or .otf, etc) to the fonts directory. E.g., for macOS, `~/Library/Fonts`.

#### iTerm2 (preferred)

- Open iTerm2 -> Preferences -> General.
- Check "Load Preferences from a custom folder or URL"
- Set custom path to `$BEDROCK_DIR/config`.
- iTerm will pop up a dialog box asking `Copy local preferences to custom folder now?`.
  Answer `Don't Copy`.
- Close the Preferences dialog and relaunch iTerm2.
- Go to iTerm2 -> Preferences -> Profiles. Select the bedrock profile.
    - If the "bedrock" profile is not available, it's probably because you
      previously chose `Copy` instead of `Don't Copy`. Go back and try again.
- Select the "Colors" tab.
- Select "Color Presets..." -> "Import..."
- Choose the file `$BEDROCK_DIR/config/bedrock.itermcolors`
- Select "Color Presets..." -> "bedrock", which is now available as a choice.
- Relaunch iTerm2
- Uncheck "Load Preferences from a custom folder or URL"

#### Terminal

- Open Terminal -> Preferences -> Profiles
- Import ``terminal/bedrock.terminal``
- Set bedrock as the default
