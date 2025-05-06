# Guide d'Installation et Premiers Pas avec ma Configuration Vim (JS TS NEW)

Cette documentation est destinée à un utilisateur **débutant** sous Vim souhaitant installer et configurer un environnement de développement complet pour **C++**, **Rust** et **Go**. Nous verrons d'abord comment installer Vim et les outils, puis les bases de Vim, avant de présenter les raccourcis de ma configuration.

---

## 1. Installation de Vim et Vim-Plug

### 1.1. Installation de Vim

```bash
# Ubuntu / WSL
sudo apt update && sudo apt install vim
# macOS via Homebrew
brew install vim
```

Assurez-vous d'avoir Vim **8.x** ou supérieur avec le support de Python pour CoC.

### 1.2. Installer Vim-Plug (gestionnaire de plugins)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

---

## 2. Récupération de la configuration

### 2.1. Cloner le dépôt GitHub

```bash
git clone <url-du-repo> ~/.vim-config
```

### 2.2. Copier le fichier `.vimrc`

```bash
cp ~/.vim-config/vimrc ~/.vimrc
```

---

## 3. Installation des plugins

1. Ouvrez Vim :

   ```bash
   vim
   ```
2. Lancez la commande d'installation :

   ```vim
   :PlugInstall
   ```
3. Patientez pendant le téléchargement et l'installation.

---

## 4. Installation des outils externes

Installez les compilateurs, formatters et language servers :

```bash
sudo apt install clang clang-format clangd golang rustc cargo
```

* **clangd** pour C++ (autocomplétion LSP)
* **clang-format** pour le formatage C++
* **go**, **gofmt**, **goimports** pour Go
* **rustc**, **cargo**, **rust-analyzer** pour Rust

---

## 5. Bases de Vim pour débutants

### 5.1. Les trois modes

* **Normal** : navigation & commandes (`Esc`).
* **Insert** : saisie de texte (`i`, `a`, `o`).
* **Visual** : sélection (`v`, `V`, `Ctrl-v`).

### 5.2. Navigation de base

| Touche      | Action                                |
| ----------- | ------------------------------------- |
| `h j k l`   | gauche, bas, haut, droite             |
| `0`         | début de ligne                        |
| `^`         | premier caractère non-espace          |
| `$`         | fin de ligne                          |
| `gg`        | début du fichier                      |
| `G`         | fin du fichier                        |
| `w`/`e`/`b` | mot suivant / fin mot / mot précédent |

### 5.3. Édition de base

| Commande | Action                   |
| -------- | ------------------------ |
| `i`      | insérer avant le curseur |
| `a`      | insérer après le curseur |
| `o`      | nouvelle ligne dessous   |
| `dd`     | supprimer ligne courante |
| `yy`     | copier ligne courante    |
| `p`      | coller après             |
| `u`      | annuler                  |
| `Ctrl-r` | rétablir                 |

---

## 6. Gestion des fenêtres et splits

| Commande          | Action                            |                           |
| ----------------- | --------------------------------- | ------------------------- |
| `:split` / `:sp`  | split horizontal                  |                           |
| `:vsplit` / `:vs` | split vertical                    |                           |
| `Ctrl-w h/j/k/l`  | changer de fenêtre                |                           |
| `Ctrl-w o`        | fermer toutes les autres fenêtres |                           |
| `Ctrl-w _`        | maximiser verticalement           |                           |
| \`Ctrl-w          | \`                                | maximiser horizontalement |

## 7. Gestion des buffers

| Commande           | Action                                     |
| ------------------ | ------------------------------------------ |
| `:ls`              | Lister tous les buffers ouverts            |
| `:bnext` / `:bn`   | Aller au buffer suivant                    |
| `:bprev` / `:bp`   | Aller au buffer précédent                  |
| `:bdelete` / `:bd` | Fermer un buffer sans quitter Vim          |
| `:buffer <num>`    | Passer au buffer numéro `<num>`            |
| `<leader>bd`       | Fermer le buffer courant (raccourci perso) |

## 8. Présentation de la configuration (`.vimrc`)

Présentation de la configuration (`.vimrc`)

La configuration installe les plugins suivants :

* **Interface** : NERDTree, vim-airline, gruvbox.
* **LSP / Autocompletion** via **CoC** pour C++, Go, Rust, JavaScript/TypeScript.
* **Linting/formatting** : ALE, clang-format, goimports, rustfmt.
* **Langages** : C++, Rust, Go, JS/TS.

Les plugins sont déclarés dans la section :

```vim
call plug#begin('~/.vim/plugged')
  " ... liste des plugins ...
call plug#end()
```

---

## 8. Raccourcis personnalisés

| Raccourci    | Action                                                     |
| ------------ | ---------------------------------------------------------- |
| `<C-n>`      | Ouvrir/fermer NERDTree                                     |
| `<leader>n`  | Focus sur NERDTree                                         |
| `<leader>cb` | Compiler/exécuter C++ (`g++ -std=c++17 % -o %:r && ./%:r`) |
| `<leader>cf` | Formatter C++ (`:ClangFormat`)                             |
| `<leader>ca` | Corriger avec ALE (`:ALEFix`)                              |
| `<leader>gb` | `GoBuild`                                                  |
| `<leader>gr` | `GoRun`                                                    |
| `<leader>gt` | `GoTest`                                                   |
| `<leader>gi` | `GoImports`                                                |
| `<leader>rr` | `cargo run`                                                |
| `<leader>ff` | Recherche fichier (FZF)                                    |
| `<leader>fg` | Recherche contenu (FZF live grep)                          |
| `gd`         | Aller à la définition (CoC)                                |
| `gr`         | Trouver références (CoC)                                   |
| `K`          | Documentation hover (CoC)                                  |

---

## 9. Bonnes pratiques

* **Sauvegarde et format** : utilisez les `autocmd BufWritePre` pour formater à chaque sauvegarde.
* **Projets** : ouvrez la racine de votre projet pour que LSP détecte `tsconfig.json`, `Cargo.toml` ou `go.mod`.
* **Exploration** : utilisez `:NERDTreeToggle` pour naviguer dans l'arborescence.

---

Vous êtes maintenant prêt à développer en **C++**, **Rust** et **Go** dans Vim. Bon coding ! 🚀
