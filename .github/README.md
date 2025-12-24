# Mark's NeoVim IDE

## ⚙️ Motivation

Using mouse while programming is the worst thing you can do to yourself.
This NVim setup I use as IDE for my C/C++ Python projects.

## 📋 Requirements

All plugins loaded with Lazy.

List of packages needed:
- lazy
- ripgrep

## 🛠️ Installation

Clone and copy file to working .config/nvim:

```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim/lua/user
```

```shell
cp -R ./lua ~/.config/nvim
cp ./init.lua ~/.config/nvim
```

File `projects.lua` contains the list of project folders.
Only the paths in the list are used to find files or strings.

## 🚀 Keyboard Shortcuts

- **F2** - Save current buffer
- **F4** - Open new terminal window. Defocus to toggle.
- **F12** - Toggle NeoTree file browser
- **TAB** - Show open buffer list
- **Leader>ff** - Find project files
- **Leader>fg** - Grep in project files
- **Leader>fs** - Grep string under a cursor in project files

- **<A>Left** - Resize buffer horizontaly 
- **<A>Right** - Resize buffer horizontaly 
- **<A>Up** - Resize buffer vertically 
- **<A>Down** - Resize buffer vertically 

- **<C>Left** - Switch to buffer on the left
- **<C>Right** - Switch to buffer on the right
- **<C>Up** - Switch to buffer upwards
- **<C>Down** - Switch to buffer downwards

- **<C>]** - Go to symbol definition
- **<C>t** - Go back

### NeoTree Shortcuts

When focused in NeoVim

- **'P'** - Toggle file preview
- **'r'** - rename file
- **'a'** - add file or folder
- **'.'** - CWD to selected folder
