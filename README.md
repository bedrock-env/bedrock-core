# bedrock

A framework for constructing a standardized setup for dotfiles.

Defaults:

```bash
EDITOR='vim'
PROJECT_BASE_DIR="$HOME/Development"
```

## Setup

### Installation

Run this:

```bash
git clone git@github.com:bedrock-env/bedrock.git
```

From the bedrock directory, run:
```bash
./script/bootstrap
```

``bootstrap`` prompts for some configuration details such as your git author name
and git author email. It then symlinks config files, runs ``script/install`` to install
additional requirements, then installs any present extensions.


### Post-install

- Reload your terminal window or switch directories

If you wish to override things like ``PROJECT_BASE_DIR``, do so in ``~/.localrc``.

#### Fonts

The recommended font to use in iTerm2 and Terminal is InputSans-Regular from the Input
font collection.

- Obtain the [Input font collection](http://input.fontbureau.com/download/)
- Copy `InputMono-Regular.ttf` to `~/Library/Fonts`

#### iTerm2 (preferred)

- Open iTerm2 -> Preferences -> General.
- Check "Load Preferences from a custom folder or URL"
- Set custom path to `$BEDROCK_DIR/config`
- Go to Preferences -> Profiles. Select the bedrock profile. Select the "Colors" tab.
- Select "Load Presets" -> "Import..."
- Select `iterm2/bedrock.itermcolors`
- Relaunch iTerm2
- Note: you may have to restart your machine for the shell settings to take
  effect
- Uncheck "Load Preferences from a custom folder or URL"

#### Terminal

- Open Terminal -> Preferences -> Profiles
- Import ``terminal/bedrock.terminal``
- Set dtm as the default

## Project structure

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.
- **topic/install.sh**: Any files named `install.sh` will run when `script/install`
  is executed.
