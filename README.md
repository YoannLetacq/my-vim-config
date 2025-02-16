# Configuration Vim pour le Développement C++ / Rust / Go

Ce projet contient **ma configuration Vim** pour un environnement de développement complet en **C++**, **Rust** et **Go**.

---

## **Installation étape par étape**

### 1. Cloner ce dépôt GitHub
```bash
git clone <url-du-repo> ~/.vim-config
```

### 2. Copier le fichier `vimrc`
```bash
cp ~/.vim-config/vimrc ~/.vimrc
```

### 3. Installer Vim-Plug (si non installé)
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### 4. Installer les plugins
Lancez Vim et exécutez :
```vim
:PlugInstall
```

### 5. Installer les outils nécessaires
```bash
sudo apt install clang clang-format clangd golang rustc cargo
```

---

## **Configuration de CoC pour C++ / Rust / Go**

- **Installer les extensions CoC** dans Vim :
  ```vim
  :CocInstall coc-clangd coc-rust-analyzer coc-go
  ```
- **Configurer CoC** avec :
  ```vim
  :CocConfig
  ```
  Exemple de configuration :
  ```json
  {
    "clangd.arguments": ["--background-index", "--clang-tidy"],
    "rust-analyzer.server.path": "rust-analyzer",
    "go.goplsArgs": ["-remote=auto"]
  }
  ```

---

## **Commandes Vim utiles**

- `:PlugInstall` : Installer tous les plugins.
- `:ClangFormat`, `:GoFmt`, `:RustFmt` : Formatter les fichiers respectifs.
- `:ALEFix` : Corriger les erreurs.
- `:NERDTreeToggle` : Ouvrir/fermer l'explorateur.
- `:CocList extensions` : Voir les extensions installées.

---

## **Raccourcis personnalisés dans ma configuration Vim**

| Raccourci          | Action                                              |
|--------------------|-----------------------------------------------------|
| `<C-n>`            | Ouvrir/fermer NERDTree.                            |
| `<leader>cb`       | Compiler/Exécuter un projet C++.                    |
| `<leader>gb`/`gr`  | Build/Run Go.                                       |
| `<leader>rr`       | Run Rust.                                           |
| `<leader>cf`/`gi`  | Formatter C++/Go.                                   |
| `<leader>ca`       | Corriger avec ALEFix.                               |
| `<leader>ff`       | Rechercher un fichier (FZF).                        |
| `gd`, `gr`, `K`    | Aller à la définition, références, documentation.   |

---

Cette configuration est **optimisée et complète** pour coder efficacement en C++, Rust et Go avec Vim ! 🚀


