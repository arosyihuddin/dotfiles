# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## 🚀 Supported Configurations

### 📝 Language Support
- **TypeScript/JavaScript** - Full support with vtsls, auto-imports, refactoring
- **Python** - Pyright + Ruff (linting & formatting), auto venv detection
- **PHP** - Intelephense/Phpactor support
- **Go** - Complete Go development setup
- **Docker** - Dockerfile support
- **SQL** - Database query support
- **HTML/CSS** - Emmet support for fast development
- **Tailwind CSS** - IntelliSense and utilities
- **Markdown** - Enhanced markdown editing
- **JSON/YAML/TOML** - Configuration file support
- **Vue.js** - Volar with hybrid mode
- **Git** - Git integration and tools

### 🔧 LSP Servers Configured
- `vtsls` - TypeScript/JavaScript (tsserver alternative)
- `pyright` - Python type checking
- `ruff` / `ruff_lsp` - Python linting & formatting
- `intelephense` / `phpactor` - PHP (configurable)
- `emmet_language_server` - HTML/CSS expansion
- `tailwindcss` - Tailwind CSS IntelliSense
- `volar` - Vue.js support
- Additional language servers via LazyVim extras

### 🎨 Formatters
- **Prettier** - JavaScript, TypeScript, HTML, CSS, JSON, Markdown
- **Black** - Python code formatting

### 🤖 AI Integration
- **GitHub Copilot** - AI code completion
- **Sidekick** - AI coding assistant (replaces Copilot Chat)
- **WakaTime** - Coding time tracking

### ⚡ Editor Features
- **Telescope** - Fuzzy finder with dotfiles support
- **Auto Session** - Automatic session save/restore
- **Yanky** - Enhanced yank/paste operations
- **Dial** - Enhanced increment/decrement
- **Inc-rename** - LSP rename with preview
- **Mini-diff** - Git diff in sign column
- **Refactoring** - Advanced code refactoring tools
- **Mini-indentscope** - Indent scope visualization
- **Mini-hipatterns** - Pattern highlighting (hex colors, etc)
- **Smear Cursor** - Smooth cursor animations
- **Snacks** - Explorer, dashboard, and UI enhancements
- **Dotfile Support** - Syntax highlighting for dotfiles (.env, .gitignore, etc)

### 🎯 Custom Keymaps

**General:**
- `Ctrl+Z` / `Ctrl+Y` - Undo/Redo in insert mode
- `Alt+Up` / `Alt+Down` - Move lines up/down
- `Alt+Shift+Up` / `Alt+Shift+Down` - Duplicate lines
- `<leader>ff` / `<leader><space>` - Find files (includes dotfiles)
- Mouse wheel scrolling in terminal mode

**AI Assistant (Sidekick):**
- `<leader>aa` - Open agent menu
- `<leader>ad` - Factory Droid agent
- `<leader>ac` - Claude agent
- `<leader>aC` - Copilot CLI agent
- `<leader>ag` - Gemini agent
- `<leader>ax` - Codex agent
- `<leader>at` - Send current context
- `<leader>af` - Send file
- `<leader>av` - Send visual selection
- `<leader>aq` - Quit/close agent
- `Ctrl+.` - Toggle Sidekick
- `Tab` - Next edit suggestion

**TypeScript/JavaScript:**
- `<leader>co` - Organize imports
- `<leader>cM` - Add missing imports
- `<leader>cu` - Remove unused imports
- `<leader>cD` - Fix all diagnostics
- `gD` - Go to source definition
- `gR` - File references

### ⚙️ UI Enhancements
- **Dashboard** - Alpha dashboard + Snacks dashboard on startup
- **Color Scheme** - TokyoNight Moon theme
- **Line Numbers** - Absolute line numbers (relative disabled)
- **Mouse Support** - Full mouse support enabled
- **Terminal** - Enhanced scrollback (10000 lines) with scroll support
- **Sessions** - Auto-save/restore sessions (stored in `~/.local/share/nvim/sessions/`)

### 🧪 Testing
- Core testing framework integrated

### ⚡ Performance
- Disabled providers: Node.js, Perl, Python3, Ruby (not needed)
- Netrw disabled (using Snacks explorer instead)

## 📦 Installation

Clone this configuration to your Neovim config directory:
```bash
git clone <your-repo> ~/.config/nvim
```

Launch Neovim and let Lazy.nvim install all plugins automatically.
